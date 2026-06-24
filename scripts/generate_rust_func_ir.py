#!/usr/bin/env python3
"""Extract Rust benchmark functions and emit LLVM IR summaries."""

from __future__ import annotations

import re
import shutil
import subprocess
from collections import Counter, defaultdict
from dataclasses import dataclass, field
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
BENCHMARK_ROOT = ROOT / "benchmark"
OUT_ROOT = ROOT / "rust_funcs"

TRANSCODER_SUITES = ("c_transcoder", "cpp_transcoder", "go_transcoder")
SUITES = ("c_crown", *TRANSCODER_SUITES)
OPTS = ("O0", "O1", "O2")
LLM_MARKER = "////// LLM Output //////"

CSV_PATHS = {
    "c_transcoder": ROOT / "VERT_evaluation" / "c_results.csv",
    "cpp_transcoder": ROOT / "VERT_evaluation" / "cpp_results.csv",
    "go_transcoder": ROOT / "go_results.csv",
    "c_crown": ROOT / "VERT_evaluation" / "crown_results.csv",
}


@dataclass
class CsvInfo:
    compile_expected: bool | None = None
    rows: list[str] = field(default_factory=list)
    duplicate: bool = False


@dataclass
class EmitResult:
    opt: str
    ok: bool
    message: str = ""


@dataclass
class BenchmarkResult:
    suite: str
    benchmark: str
    kind: str
    source_note: str
    source_path: Path | None
    emit_source: Path | None
    compile_expected: bool | None
    csv_duplicate: bool = False
    llm_source: str | None = None
    llm_conflict: bool = False
    missing_llm: bool = False
    copied_crate: Path | None = None
    copied_impl_source: Path | None = None
    emit_results: dict[str, EmitResult] = field(default_factory=dict)

    @property
    def emitted_ok(self) -> bool:
        return all(self.emit_results.get(opt, EmitResult(opt, False)).ok for opt in OPTS)


def parse_csv(path: Path) -> dict[str, CsvInfo]:
    results: dict[str, CsvInfo] = {}
    if not path.exists():
        return results

    row_counts: Counter[str] = Counter()
    for raw_line in path.read_text(errors="replace").splitlines():
        line = raw_line.strip()
        if not line:
            continue
        parts = [part.strip() for part in line.split(",")]
        if not parts or parts[0].lower() == "project":
            continue
        name = parts[0]
        row_counts[name] += 1
        info = results.setdefault(name, CsvInfo())
        info.rows.append(line)
        compile_value: bool | None = None
        for part in parts[1:]:
            match = re.fullmatch(r"compile=(\d+)", part)
            if match:
                compile_value = match.group(1) == "1"
        if compile_value is True:
            info.compile_expected = True
        elif compile_value is False and info.compile_expected is None:
            info.compile_expected = False

    for name, count in row_counts.items():
        if count > 1:
            results[name].duplicate = True
    return results


def benchmark_dirs(suite: str) -> list[Path]:
    suite_dir = BENCHMARK_ROOT / suite
    if not suite_dir.exists():
        return []
    return sorted(path for path in suite_dir.iterdir() if path.is_dir())


def llm_block(path: Path) -> str | None:
    if not path.exists():
        return None
    text = path.read_text(errors="replace")
    start = text.find(LLM_MARKER)
    if start < 0:
        return None
    start += len(LLM_MARKER)
    end = text.find(LLM_MARKER, start)
    if end < 0:
        return text[start:].strip()
    return text[start:end].strip()


def choose_llm_source(bench_dir: Path) -> tuple[str | None, str | None, bool]:
    bolero = bench_dir / "out-rwasm-bolero" / "src" / "main.rs"
    mutated = bench_dir / "out-rwasm-mutated" / "src" / "main.rs"
    bolero_block = llm_block(bolero)
    mutated_block = llm_block(mutated)
    conflict = bolero_block is not None and mutated_block is not None and bolero_block != mutated_block
    if bolero_block is not None:
        return bolero_block, "out-rwasm-bolero/src/main.rs", conflict
    if mutated_block is not None:
        return mutated_block, "out-rwasm-mutated/src/main.rs", conflict
    return None, None, conflict


def top_level_fn_name(line: str) -> str | None:
    match = re.match(r"^(\s*)(?:(?:pub(?:\([^)]*\))?)\s+)?(?:unsafe\s+)?(?:extern\s+\"[^\"]+\"\s+)?fn\s+([A-Za-z_]\w*)\s*(.*)", line)
    if not match:
        return None
    suffix = match.group(3)
    before_args = suffix.split("(", 1)[0]
    if "<" in before_args:
        return None
    return match.group(2)


def annotate_no_mangle(source: str) -> str:
    lines = source.splitlines()
    out: list[str] = []
    depth = 0
    main_seen = 0

    for line in lines:
        name = top_level_fn_name(line) if depth == 0 else None
        if name == "main":
            main_seen += 1
            if main_seen > 1:
                line = re.sub(r"\bfn\s+main\s*\(", f"fn __vert_unused_main_{main_seen}(", line, count=1)
                name = f"__vert_unused_main_{main_seen}"
        if name and name != "main":
            previous = next((item.strip() for item in reversed(out) if item.strip()), "")
            if previous not in {"#[no_mangle]", "#[unsafe(no_mangle)]"}:
                out.append("#[no_mangle]")
        out.append(line)
        depth += line.count("{") - line.count("}")
        if depth < 0:
            depth = 0
    return "\n".join(out) + ("\n" if source.endswith("\n") else "")


def parameter_needs_mut(source: str, name: str) -> bool:
    escaped = re.escape(name)
    mutating_method = re.compile(
        rf"\b{escaped}\s*\.\s*(?:sort|sort_by|reverse|swap|push|push_str|clear|insert|remove|resize)\s*\("
    )
    indexed_assignment = re.compile(rf"\b{escaped}\s*\[[^\]]+\]\s*=")
    return bool(mutating_method.search(source) or indexed_assignment.search(source))


def parameter_uses_nested_index(source: str, name: str) -> bool:
    return bool(re.search(rf"\b{re.escape(name)}\s*\[[^\]]+\]\s*\[", source))


def repair_malformed_array_parameters(source: str) -> tuple[str, list[str]]:
    notes: list[str] = []
    pattern = re.compile(
        r"(?P<prefix>\b(?:mut\s+)?[A-Za-z_]\w*\s*:\s*)"
        r"(?P<outer>[iu]\d+|f\d+)\s*\[\s*"
        r"(?P<inner>[A-Za-z_]\w*(?:\s*;\s*\d+)?)\s*\]"
    )

    def replacement(match: re.Match[str]) -> str:
        prefix = match.group("prefix")
        name = prefix.split(":", 1)[0].replace("mut ", "").strip()
        inner = re.sub(r"\s+", "", match.group("inner"))
        if ";" in inner and parameter_uses_nested_index(source, name):
            ty, size = inner.split(";", 1)
            slice_ty = f"[[{ty}; {size}]]"
        else:
            ty = inner.split(";", 1)[0]
            slice_ty = f"[{ty}]"
        ref = "&mut " if parameter_needs_mut(source, name) else "&"
        notes.append(
            f"repaired malformed array parameter `{prefix.strip()}{match.group('outer')} [{match.group('inner')}]`"
        )
        return f"{prefix}{ref}{slice_ty}"

    return pattern.sub(replacement, source), notes


def repair_malformed_string_parameters(source: str) -> tuple[str, list[str]]:
    notes: list[str] = []
    repaired = re.sub(r"\b([A-Za-z_]\w*\s*:\s*)i32\s+String\b", r"\1String", source)
    if repaired != source:
        notes.append("repaired malformed String parameter")
    return repaired, notes



def repair_malformed_named_slice_parameter(source: str) -> tuple[str, list[str]]:
    notes: list[str] = []
    pattern = re.compile(
        r"\b(?P<prefix>(?:mut\s+)?[A-Za-z_]\w*\s*:\s*)\[\s*"
        r"(?P<elem>i32|u32|f32|f64|char)\s*;\s*"
        r"(?P<size>[A-Za-z_]\w*)\s*:\s*(?P<size_ty>i32|u32|usize)\s*\]"
    )

    def replacement(match: re.Match[str]) -> str:
        notes.append("repaired malformed `[T; n: Ty]` parameter to slice plus size parameter")
        return f"{match.group('prefix')}&mut [{match.group('elem')}], {match.group('size')}: {match.group('size_ty')}"

    return pattern.sub(replacement, source), notes


def repair_conflicting_std_cmp_imports(source: str) -> tuple[str, list[str]]:
    notes: list[str] = []
    repaired = source
    if re.search(r"(?m)^fn\s+min\s*\(", source):
        repaired = re.sub(r"(?m)^use\s+std::cmp::min;\n", "", repaired)
    if re.search(r"(?m)^fn\s+max\s*\(", source):
        repaired = re.sub(r"(?m)^use\s+std::cmp::max;\n", "", repaired)
    if repaired != source:
        notes.append("removed std::cmp import conflicting with helper function")
    return repaired, notes

def repair_malformed_slice_size_parameter(source: str) -> tuple[str, list[str]]:
    notes: list[str] = []
    pattern = re.compile(r"\b((?:mut\s+)?[A-Za-z_]\w*\s*:\s*)\[\s*(i32|u32|f32|f64|char)\s*;\s*[A-Za-z_]\w*\s*\]")
    repaired = pattern.sub(r"\1&[\2]", source)
    if repaired != source:
        notes.append("repaired malformed `[T; n]` parameter to slice parameter")
    return repaired, notes


def repair_comma_let_bindings(source: str) -> tuple[str, list[str]]:
    notes: list[str] = []
    pattern = re.compile(
        r"(?m)^(\s*)let\s+mut\s+([A-Za-z_]\w*)\s*=\s*([^,;\n]+),\s*"
        r"([A-Za-z_]\w*)\s*=\s*([^;\n]+);"
    )

    def replacement(match: re.Match[str]) -> str:
        notes.append("split comma-separated mutable let binding")
        indent, first, first_value, second, second_value = match.groups()
        return f"{indent}let mut {first} = {first_value};\n{indent}let mut {second} = {second_value};"

    return pattern.sub(replacement, source), notes



def repair_keyword_mod_variable(source: str) -> tuple[str, list[str]]:
    if not re.search(r"\blet\s+mod\b", source):
        return source, []
    return re.sub(r"\bmod\b", "r#mod", source), ["escaped keyword variable `mod` as raw identifier"]

def repair_trailing_extra_parens(source: str) -> tuple[str, list[str]]:
    stripped = source.rstrip()
    trailing_newline = "\n" if source.endswith("\n") else ""
    notes: list[str] = []
    if stripped.endswith("}))"):
        source = stripped[:-2] + trailing_newline
        notes.append("removed trailing extra `))` after function body")
    elif stripped.endswith("})"):
        source = stripped[:-1] + trailing_newline
        notes.append("removed trailing extra `)` after function body")
    return source, notes


def repair_simple_transcoder_syntax(source: str) -> tuple[str, list[str]]:
    notes: list[str] = []
    for repair in (
        repair_malformed_array_parameters,
        repair_malformed_string_parameters,
        repair_malformed_named_slice_parameter,
        repair_malformed_slice_size_parameter,
        repair_comma_let_bindings,
        repair_keyword_mod_variable,
        repair_trailing_extra_parens,
    ):
        source, repair_notes = repair(source)
        notes.extend(repair_notes)
    return source, notes



C_TO_RUST_SCALARS = {
    "int": "i32",
    "long": "i32",
    "long long": "i64",
    "unsigned": "u32",
    "unsigned int": "u32",
    "float": "f32",
    "double": "f64",
    "bool": "bool",
    "char": "i8",
}

GO_TO_RUST_SCALARS = {
    "int": "i32",
    "int32": "i32",
    "int64": "i64",
    "uint": "u32",
    "uint32": "u32",
    "float32": "f32",
    "float64": "f64",
    "bool": "bool",
    "string": "String",
}


def rust_return_type(source_return: str) -> str | None:
    source_return = re.sub(r"\s+", " ", source_return.strip())
    if source_return == "void":
        return None
    return C_TO_RUST_SCALARS.get(source_return, "i32")


def parse_c_like_f_gold_signature(path: Path) -> tuple[list[str], str | None] | None:
    if not path.exists():
        return None
    text = path.read_text(errors="replace")
    match = re.search(
        r"\b(?P<ret>bool|int|long\s+long|long|unsigned\s+int|unsigned|float|double|void)\s+"
        r"f_gold\s*\((?P<params>[^)]*)\)",
        text,
        re.S,
    )
    if not match:
        return None
    params: list[str] = []
    for raw_param in match.group("params").split(","):
        param = re.sub(r"\s+", " ", raw_param.replace("*", " * ").strip())
        if not param or param == "void":
            continue
        array_match = re.match(r"(?P<ty>bool|int|long long|long|unsigned int|unsigned|float|double|char)\s+(?P<name>[A-Za-z_]\w*)\s*(?:\[\s*\]|\*)", param)
        scalar_match = re.match(r"(?P<ty>bool|int|long long|long|unsigned int|unsigned|float|double|char)\s+(?P<name>[A-Za-z_]\w*)$", param)
        if array_match:
            ty = C_TO_RUST_SCALARS.get(array_match.group("ty"), "i32")
            params.append(f"mut {array_match.group('name')}: &mut [{ty}]")
        elif scalar_match:
            ty = C_TO_RUST_SCALARS.get(scalar_match.group("ty"), "i32")
            params.append(f"{scalar_match.group('name')}: {ty}")
    return params, rust_return_type(match.group("ret"))


def parse_go_f_gold_signature(path: Path) -> tuple[list[str], str | None] | None:
    if not path.exists():
        return None
    text = path.read_text(errors="replace")
    match = re.search(r"\bfunc\s+f_gold\s*\((?P<params>[^)]*)\)\s*(?P<ret>[A-Za-z0-9_\[\]]+)?", text, re.S)
    if not match:
        return None
    params: list[str] = []
    for raw_param in match.group("params").split(","):
        param = raw_param.strip()
        if not param:
            continue
        array_match = re.match(r"(?P<name>[A-Za-z_]\w*)\s+\[\](?P<ty>[A-Za-z0-9_]+)$", param)
        scalar_match = re.match(r"(?P<name>[A-Za-z_]\w*)\s+(?P<ty>[A-Za-z0-9_]+)$", param)
        if array_match:
            ty = GO_TO_RUST_SCALARS.get(array_match.group("ty"), "i32")
            params.append(f"mut {array_match.group('name')}: &mut [{ty}]")
        elif scalar_match:
            ty = GO_TO_RUST_SCALARS.get(scalar_match.group("ty"), "i32")
            params.append(f"{scalar_match.group('name')}: {ty}")
    ret = match.group("ret") or "int"
    return params, GO_TO_RUST_SCALARS.get(ret, "i32")


def original_f_gold_signature(suite: str, bench_dir: Path) -> tuple[list[str], str | None] | None:
    if suite == "c_transcoder":
        for suffix in ("_processed.c", ".c", "_towasm.c"):
            parsed = parse_c_like_f_gold_signature(bench_dir / f"{bench_dir.name}{suffix}")
            if parsed:
                return parsed
    if suite == "cpp_transcoder":
        for suffix in ("_processed.cpp", ".cpp", "_towasm.cpp"):
            parsed = parse_c_like_f_gold_signature(bench_dir / f"{bench_dir.name}{suffix}")
            if parsed:
                return parsed
    if suite == "go_transcoder":
        parsed = parse_go_f_gold_signature(bench_dir / f"{bench_dir.name}.go")
        if parsed:
            return parsed
    return None


def repair_missing_f_gold_header(source: str, suite: str, bench_dir: Path) -> tuple[str, list[str]]:
    if re.search(r"(?m)^\s*fn\s+f_gold\s*\(", source):
        return source, []
    signature = original_f_gold_signature(suite, bench_dir)
    if not signature:
        return source, []
    params, ret = signature
    ret_text = f" -> {ret}" if ret else ""
    header = f"fn f_gold({', '.join(params)}){ret_text} {{"
    lines = source.splitlines()
    insert_at: int | None = None
    for idx, line in enumerate(lines):
        stripped = line.strip()
        if not stripped:
            continue
        if re.match(r"fn\s+(?:min|max|cmpfunc|len|sort)\s*\(", stripped) or stripped.startswith("use "):
            continue
        if stripped.startswith("fn "):
            return source, []
        insert_at = idx
        break
    if insert_at is None:
        return source, []
    lines.insert(insert_at, header)
    return "\n".join(lines) + ("\n" if source.endswith("\n") else ""), ["reconstructed missing f_gold header from original benchmark signature"]

def c_crown_dependency_prelude(source: str) -> tuple[str, list[str]]:
    notes: list[str] = []
    prelude: list[str] = []
    if ".seek(" in source or ".rewind(" in source:
        if "use std::io::Seek;" not in source and "use std::io::{Seek" not in source:
            prelude.append("use std::io::Seek;")
            notes.append("added std::io::Seek import")
    if not prelude:
        return source, notes
    return "\n".join(prelude) + "\n" + source, notes


def make_emit_source(source: str, suite: str) -> tuple[str, list[str]]:
    notes: list[str] = [
        "added crate-level allow attributes",
        "added #[no_mangle] to top-level non-main functions where possible",
    ]
    if suite == "c_crown":
        source, dependency_notes = c_crown_dependency_prelude(source)
        notes.extend(dependency_notes)
    prelude = "\n".join(
        [
            "#![allow(dead_code)]",
            "#![allow(unused_imports)]",
            "#![allow(unused_variables)]",
            "#![allow(unused_mut)]",
            "#![allow(non_snake_case)]",
            "#![allow(non_camel_case_types)]",
            "#![allow(improper_ctypes_definitions)]",
            "",
        ]
    )
    return prelude + annotate_no_mangle(source), notes


def run_rustc(source: Path, out_path: Path, opt: str) -> EmitResult:
    cmd = [
        "rustc",
        "--edition=2021",
        "--crate-type=lib",
        "--emit=llvm-ir",
        f"-Copt-level={opt[-1]}",
        "-C",
        "debuginfo=0",
        str(source),
        "-o",
        str(out_path),
    ]
    proc = subprocess.run(cmd, text=True, capture_output=True, cwd=ROOT)
    output = "\n".join(part for part in (proc.stdout.strip(), proc.stderr.strip()) if part)
    ok = proc.returncode == 0 and out_path.exists() and out_path.stat().st_size > 0
    return EmitResult(opt=opt, ok=ok, message=output)


def first_message(message: str, limit: int = 1000) -> str:
    if not message.strip():
        return ""
    lines = [line.rstrip() for line in message.splitlines() if line.strip()]
    return "\n".join(lines[:12])[:limit]


def select_c_crown_crate(bench_dir: Path) -> tuple[Path | None, Path | None]:
    crates = sorted(path.parent for path in bench_dir.glob("*/Cargo.toml") if "out-rwasm" not in path.as_posix())
    if not crates:
        return None, None
    crate = crates[0]
    impls = sorted(path for path in (crate / "src").glob("*.rs") if path.name != "lib.rs")
    return crate, impls[0] if impls else None


def emit_all(result: BenchmarkResult) -> None:
    if result.emit_source is None:
        for opt in OPTS:
            result.emit_results[opt] = EmitResult(opt=opt, ok=False, message="no emit source")
        return
    out_dir = OUT_ROOT / result.suite / result.benchmark
    for opt in OPTS:
        result.emit_results[opt] = run_rustc(result.emit_source, out_dir / f"{opt}.ll", opt)


def process_transcoder_benchmark(suite: str, bench_dir: Path, csv_info: CsvInfo | None) -> BenchmarkResult:
    out_dir = OUT_ROOT / suite / bench_dir.name
    out_dir.mkdir(parents=True, exist_ok=True)

    block, source_name, conflict = choose_llm_source(bench_dir)
    result = BenchmarkResult(
        suite=suite,
        benchmark=bench_dir.name,
        kind="llm-output-block",
        source_note=source_name or "missing LLM output block",
        source_path=bench_dir / source_name if source_name else None,
        emit_source=None,
        compile_expected=csv_info.compile_expected if csv_info else None,
        csv_duplicate=csv_info.duplicate if csv_info else False,
        llm_source=source_name,
        llm_conflict=conflict,
        missing_llm=block is None,
    )

    if block is None:
        emit_all(result)
        write_summary(result, csv_info)
        return result

    source_text, repair_notes = repair_simple_transcoder_syntax(block + "\n")
    source_text, header_notes = repair_missing_f_gold_header(source_text, suite, bench_dir)
    repair_notes.extend(header_notes)
    source_path = out_dir / f"{bench_dir.name}.rs"
    source_path.write_text(source_text)
    emit_text, notes = make_emit_source(source_text, suite)
    emit_path = out_dir / f"{bench_dir.name}_emit.rs"
    emit_path.write_text(emit_text)
    result.source_path = source_path
    result.emit_source = emit_path
    result.source_note += "; " + "; ".join(repair_notes + notes)
    emit_all(result)
    write_summary(result, csv_info)
    return result


def process_c_crown_benchmark(bench_dir: Path, csv_info: CsvInfo | None) -> BenchmarkResult:
    out_dir = OUT_ROOT / "c_crown" / bench_dir.name
    out_dir.mkdir(parents=True, exist_ok=True)
    crate, impl_source = select_c_crown_crate(bench_dir)

    result = BenchmarkResult(
        suite="c_crown",
        benchmark=bench_dir.name,
        kind="crate-copy",
        source_note="copied non-rwasm Rust crate; implementation source selected instead of template lib.rs",
        source_path=impl_source,
        emit_source=None,
        compile_expected=csv_info.compile_expected if csv_info else None,
        csv_duplicate=csv_info.duplicate if csv_info else False,
        copied_crate=None,
        copied_impl_source=None,
    )

    if crate is None or impl_source is None:
        result.source_note = "missing non-rwasm Rust crate or implementation source"
        emit_all(result)
        write_summary(result, csv_info)
        return result

    copied_crate = out_dir / crate.name
    if copied_crate.exists():
        shutil.rmtree(copied_crate)
    shutil.copytree(crate, copied_crate, ignore=shutil.ignore_patterns("target"))
    copied_impl = copied_crate / "src" / impl_source.name

    source_text = copied_impl.read_text(errors="replace")
    emit_text, notes = make_emit_source(source_text, "c_crown")
    emit_path = out_dir / f"{bench_dir.name}_emit.rs"
    emit_path.write_text(emit_text)

    result.copied_crate = copied_crate
    result.copied_impl_source = copied_impl
    result.source_path = copied_impl
    result.emit_source = emit_path
    result.source_note += "; " + "; ".join(notes)
    emit_all(result)
    write_summary(result, csv_info)
    return result


def status_for(result: BenchmarkResult) -> str:
    if result.missing_llm:
        return "missing-llm"
    if result.emitted_ok:
        return "ok"
    return "failed"


def write_summary(result: BenchmarkResult, csv_info: CsvInfo | None) -> None:
    out_dir = OUT_ROOT / result.suite / result.benchmark
    lines = [
        f"# {result.suite}/{result.benchmark}",
        "",
        f"- Kind: {result.kind}",
        f"- Status: {status_for(result)}",
        f"- Source note: {result.source_note}",
        f"- Source: `{result.source_path.relative_to(ROOT) if result.source_path and result.source_path.exists() else 'none'}`",
        f"- Emit source: `{result.emit_source.relative_to(ROOT) if result.emit_source and result.emit_source.exists() else 'none'}`",
        f"- CSV compile expected: {result.compile_expected if result.compile_expected is not None else 'unknown'}",
        f"- CSV duplicate rows: {'yes' if result.csv_duplicate else 'no'}",
    ]
    if result.llm_conflict:
        lines.append("- LLM source conflict: bolero and mutated blocks differ; bolero was used")
    if result.copied_crate:
        lines.append(f"- Copied crate: `{result.copied_crate.relative_to(ROOT)}`")
    if csv_info and csv_info.rows:
        lines.append("- CSV rows:")
        for row in csv_info.rows:
            lines.append(f"  - `{row}`")

    lines.extend(["", "## LLVM IR emission", ""])
    for opt in OPTS:
        emit = result.emit_results.get(opt, EmitResult(opt, False, "not run"))
        lines.append(f"### {opt}")
        lines.append("")
        lines.append(f"- Status: {'ok' if emit.ok else 'failed'}")
        ir_path = out_dir / f"{opt}.ll"
        if emit.ok:
            lines.append(f"- IR: `{ir_path.relative_to(ROOT)}`")
        if emit.message:
            lines.append("- Message:")
            lines.append("")
            lines.append("```text")
            lines.append(first_message(emit.message))
            lines.append("```")
        lines.append("")
    (out_dir / "SUMMARY.md").write_text("\n".join(lines).rstrip() + "\n")


def render_suite_readme(suite: str, results: list[BenchmarkResult]) -> str:
    counts = Counter(status_for(result) for result in results)
    compile_expected = sum(1 for result in results if result.compile_expected is True)
    lines = [
        f"# {suite}",
        "",
        f"- Benchmarks: {len(results)}",
        f"- CSV compile expected: {compile_expected}",
        f"- LLVM IR emitted OK: {counts['ok']}",
        f"- Missing LLM block: {counts['missing-llm']}",
        f"- Failed: {counts['failed']}",
        "",
        "| Benchmark | Status | CSV compile expected | Source |",
        "|---|---|---:|---|",
    ]
    for result in results:
        source = result.llm_source or (result.copied_crate.name if result.copied_crate else "none")
        lines.append(
            f"| `{result.benchmark}` | {status_for(result)} | "
            f"{result.compile_expected if result.compile_expected is not None else 'unknown'} | `{source}` |"
        )
    return "\n".join(lines) + "\n"


def render_total(all_results: dict[str, list[BenchmarkResult]]) -> str:
    lines = [
        "# Rust Function LLVM IR Summary",
        "",
        "- Output root: `rust_funcs/`",
        "- Transcoder source preference: `out-rwasm-bolero`, fallback `out-rwasm-mutated`",
        "- `out-rwasm-original` is excluded because it does not contain LLM output blocks.",
        "",
        "| Suite | Benchmarks | CSV compile expected | LLVM IR OK | Missing LLM block | Failed | CSV compile expected but non-ok |",
        "|---|---:|---:|---:|---:|---:|---:|",
    ]
    totals = Counter()
    for suite in SUITES:
        results = all_results.get(suite, [])
        counts = Counter(status_for(result) for result in results)
        compile_expected = sum(1 for result in results if result.compile_expected is True)
        compile_expected_non_ok = sum(
            1 for result in results if result.compile_expected is True and status_for(result) != "ok"
        )
        totals["benchmarks"] += len(results)
        totals["compile_expected"] += compile_expected
        totals["compile_expected_non_ok"] += compile_expected_non_ok
        totals["ok"] += counts["ok"]
        totals["missing-llm"] += counts["missing-llm"]
        totals["failed"] += counts["failed"]
        lines.append(
            f"| `{suite}` | {len(results)} | {compile_expected} | {counts['ok']} | "
            f"{counts['missing-llm']} | {counts['failed']} | {compile_expected_non_ok} |"
        )
    lines.append(
        f"| **Total** | {totals['benchmarks']} | {totals['compile_expected']} | "
        f"{totals['ok']} | {totals['missing-llm']} | {totals['failed']} | "
        f"{totals['compile_expected_non_ok']} |"
    )
    return "\n".join(lines) + "\n"


def render_failed(all_results: dict[str, list[BenchmarkResult]]) -> str:
    failed = [
        result
        for results in all_results.values()
        for result in results
        if status_for(result) != "ok"
    ]
    lines = [
        "# Rust Function LLVM IR Failures",
        "",
        f"- Non-ok benchmarks: {len(failed)}",
        "",
    ]
    for result in failed:
        lines.append(f"## {result.suite}/{result.benchmark}")
        lines.append("")
        lines.append(f"- Status: {status_for(result)}")
        lines.append(f"- CSV compile expected: {result.compile_expected if result.compile_expected is not None else 'unknown'}")
        lines.append(f"- Source note: {result.source_note}")
        if result.llm_conflict:
            lines.append("- LLM source conflict: bolero and mutated blocks differ; bolero was used")
        for opt in OPTS:
            emit = result.emit_results.get(opt)
            if emit and not emit.ok:
                lines.append(f"- {opt}: failed")
                if emit.message:
                    lines.append("")
                    lines.append("```text")
                    lines.append(first_message(emit.message))
                    lines.append("```")
                    lines.append("")
                break
        lines.append("")
    return "\n".join(lines).rstrip() + "\n"


def generate() -> dict[str, list[BenchmarkResult]]:
    if OUT_ROOT.exists():
        shutil.rmtree(OUT_ROOT)
    OUT_ROOT.mkdir(parents=True)

    csv_by_suite = {suite: parse_csv(path) for suite, path in CSV_PATHS.items()}
    all_results: dict[str, list[BenchmarkResult]] = defaultdict(list)

    for suite in SUITES:
        for bench_dir in benchmark_dirs(suite):
            csv_info = csv_by_suite.get(suite, {}).get(bench_dir.name)
            if suite == "c_crown":
                result = process_c_crown_benchmark(bench_dir, csv_info)
            else:
                result = process_transcoder_benchmark(suite, bench_dir, csv_info)
            all_results[suite].append(result)

        (OUT_ROOT / suite / "README.md").write_text(render_suite_readme(suite, all_results[suite]))

    (OUT_ROOT / "TOTAL.md").write_text(render_total(all_results))
    (OUT_ROOT / "FAILED.md").write_text(render_failed(all_results))
    return all_results


def main() -> None:
    all_results = generate()
    for suite in SUITES:
        results = all_results.get(suite, [])
        counts = Counter(status_for(result) for result in results)
        print(
            f"{suite}: benchmarks={len(results)} ok={counts['ok']} "
            f"missing_llm={counts['missing-llm']} failed={counts['failed']}"
        )


if __name__ == "__main__":
    main()
