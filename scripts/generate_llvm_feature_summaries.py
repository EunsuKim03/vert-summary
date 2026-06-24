#!/usr/bin/env python3
"""Generate LLVM IR and feature summaries for VERT benchmark sources."""

from __future__ import annotations

import argparse
import re
import shutil
import subprocess
from collections import defaultdict
from dataclasses import dataclass, field
from pathlib import Path
from typing import Iterable


SUITES = ("c_crown", "c_transcoder", "cpp_transcoder", "go_transcoder")
OPTS = ("O0", "O1", "O2")

C_WARN_FLAGS = (
    "-Wno-implicit-function-declaration",
    "-Wno-int-conversion",
    "-Wno-return-type",
)

MISSING_IDENTIFIER_PATTERNS = (
    re.compile(r"use of undeclared identifier '([^']+)'"),
    re.compile(r"unknown type name '([^']+)'"),
    re.compile(r'unknown type name "([^"]+)"'),
    re.compile(r"no template named '([^']+)'"),
    re.compile(r"no matching function for call to '([^']+)'"),
)

CPP_STANDARD_HEADERS = {
    "sort": "algorithm",
    "stable_sort": "algorithm",
    "max_element": "algorithm",
    "min_element": "algorithm",
    "reverse": "algorithm",
    "find": "algorithm",
    "lower_bound": "algorithm",
    "upper_bound": "algorithm",
    "binary_search": "algorithm",
    "memset": "cstring",
    "memcpy": "cstring",
    "memmove": "cstring",
    "strlen": "cstring",
    "strcmp": "cstring",
    "strcpy": "cstring",
    "strncpy": "cstring",
    "INT_MAX": "climits",
    "INT_MIN": "climits",
    "CHAR_BIT": "climits",
    "numeric_limits": "limits",
    "stack": "stack",
    "queue": "queue",
    "priority_queue": "queue",
    "set": "set",
    "multiset": "set",
    "map": "map",
    "unordered_map": "unordered_map",
    "unordered_set": "unordered_set",
    "accumulate": "numeric",
    "sqrt": "cmath",
    "pow": "cmath",
    "ceil": "cmath",
    "floor": "cmath",
    "log": "cmath",
}

FEATURE_ORDER = (
    "integer arithmetic",
    "bitwise/shift",
    "floating-point arithmetic",
    "comparisons",
    "control flow",
    "loop",
    "recursion",
    "unreachable",
    "memory/pointer",
    "casts/conversions",
    "calls/intrinsics",
    "aggregates",
    "vector/SIMD",
    "C++/exception",
    "atomics/volatile",
    "UB-related",
    "globals",
    "external declarations",
    "inline asm",
)

INTEGER_OPS = ("add", "sub", "mul", "sdiv", "udiv", "srem", "urem")
BITWISE_OPS = ("and", "or", "xor", "shl", "lshr", "ashr")
FLOAT_OPS = ("fadd", "fsub", "fmul", "fdiv", "frem")
COMPARE_OPS = ("icmp", "fcmp")
CONTROL_OPS = ("br", "switch", "ret", "phi", "select")
CAST_OPS = (
    "trunc",
    "zext",
    "sext",
    "fptrunc",
    "fpext",
    "fptoui",
    "fptosi",
    "uitofp",
    "sitofp",
    "ptrtoint",
    "inttoptr",
    "bitcast",
    "addrspacecast",
)
AGGREGATE_OPS = ("insertvalue", "extractvalue")
VECTOR_OPS = ("insertelement", "extractelement", "shufflevector")
EXCEPTION_OPS = ("invoke", "landingpad", "resume", "catchswitch", "catchpad", "cleanuppad")
ATOMIC_OPS = ("atomicrmw", "cmpxchg", "fence")
UB_KEYWORDS = (
    " nsw ",
    " nuw ",
    " inbounds ",
    " undef",
    " poison",
    " nonnull",
    " dereferenceable",
    " noundef",
    "llvm.assume",
    "llvm.trap",
    "llvm.ubsantrap",
    "ptrtoint",
    "inttoptr",
    " unreachable",
)


@dataclass
class OptSummary:
    status: str
    features: set[str] = field(default_factory=set)
    evidence: dict[str, list[str]] = field(default_factory=lambda: defaultdict(list))
    warnings: list[str] = field(default_factory=list)


@dataclass
class BenchmarkSummary:
    suite: str
    benchmark: str
    source: Path | None
    copied_source: Path | None
    note: str
    opts: dict[str, OptSummary]


def add_evidence(summary: OptSummary, feature: str, text: str) -> None:
    summary.features.add(feature)
    items = summary.evidence.setdefault(feature, [])
    cleaned = " ".join(text.strip().split())
    if cleaned and cleaned not in items and len(items) < 4:
        items.append(cleaned[:180])


def source_candidates(suite_dir: Path, suite: str, benchmark: str) -> tuple[Path | None, str]:
    if suite == "go_transcoder":
        files = sorted(suite_dir.glob("*.go"))
        if files:
            return files[0], "go source copied; LLVM IR unsupported without Go/TinyGo emitter"
        return None, "no .go source found"

    ext = ".cpp" if suite == "cpp_transcoder" else ".c"
    processed = sorted(suite_dir.glob(f"* _processed{ext}"))
    if not processed:
        processed = sorted(suite_dir.glob(f"*_processed{ext}"))
    if processed:
        return processed[0], "processed source"

    raw = sorted(
        p
        for p in suite_dir.glob(f"*{ext}")
        if not any(tag in p.name for tag in ("_towasm", "_mutated", "_diff"))
    )
    if raw:
        return raw[0], "raw source fallback; no processed source found"
    return None, f"no {ext} source found"


def emit_command(suite: str, source: Path, out_path: Path, opt: str) -> list[str]:
    if suite == "cpp_transcoder":
        return [
            "clang++",
            "-S",
            "-emit-llvm",
            "-std=c++17",
            f"-{opt}",
            str(source),
            "-o",
            str(out_path),
        ]
    return [
        "clang",
        "-S",
        "-emit-llvm",
        f"-{opt}",
        *C_WARN_FLAGS,
        str(source),
        "-o",
        str(out_path),
    ]


def run_emit(suite: str, source: Path, out_path: Path, opt: str) -> tuple[bool, list[str]]:
    cmd = emit_command(suite, source, out_path, opt)
    proc = subprocess.run(cmd, text=True, capture_output=True)
    messages = []
    if proc.stdout.strip():
        messages.extend(proc.stdout.strip().splitlines())
    if proc.stderr.strip():
        messages.extend(proc.stderr.strip().splitlines())
    return proc.returncode == 0 and out_path.exists(), messages


def ir_has_function_definitions(ir_path: Path) -> bool:
    if not ir_path.exists():
        return False
    return any(line.startswith("define ") for line in ir_path.read_text(errors="replace").splitlines())


def has_static_function_definition(source_text: str) -> bool:
    for line in source_text.splitlines():
        stripped = line.strip()
        if stripped.startswith("static ") and "(" in stripped and ";" not in stripped:
            return True
    return False


def remove_static_function_markers(source_text: str) -> str:
    lines: list[str] = []
    for line in source_text.splitlines():
        stripped = line.lstrip()
        indent = line[: len(line) - len(stripped)]
        if stripped.startswith("static ") and "(" in stripped and ";" not in stripped:
            stripped = stripped[len("static ") :]
            if stripped.startswith("inline "):
                stripped = stripped[len("inline ") :]
            line = f"{indent}{stripped}"
        lines.append(line)
    return "\n".join(lines) + ("\n" if source_text.endswith("\n") else "")


def missing_identifiers(messages: Iterable[str]) -> list[str]:
    identifiers: list[str] = []
    for message in messages:
        for pattern in MISSING_IDENTIFIER_PATTERNS:
            match = pattern.search(message)
            if match and match.group(1) not in identifiers:
                identifiers.append(match.group(1))
    return identifiers


def is_processed_source(source: Path) -> bool:
    return "_processed" in source.stem


def raw_source_for_processed(source: Path) -> Path | None:
    if not is_processed_source(source):
        return None
    raw_name = source.name.replace("_processed", "")
    raw = source.with_name(raw_name)
    if raw.exists():
        return raw
    candidates = sorted(
        p
        for p in source.parent.glob(f"*{source.suffix}")
        if "_processed" not in p.stem
        and not any(tag in p.name for tag in ("_towasm", "_mutated", "_diff"))
    )
    return candidates[0] if candidates else None


def collect_raw_includes(raw_text: str) -> list[str]:
    return [line for line in raw_text.splitlines() if line.lstrip().startswith("#include ")]


def collect_macro_definition(raw_text: str, name: str) -> str | None:
    lines = raw_text.splitlines()
    for idx, line in enumerate(lines):
        if not re.match(rf"^\s*#\s*define\s+{re.escape(name)}\b", line):
            continue
        collected = [line]
        while collected[-1].rstrip().endswith("\\") and idx + len(collected) < len(lines):
            collected.append(lines[idx + len(collected)])
        return "\n".join(collected)
    return None



def collect_typedef_or_global(raw_text: str, name: str) -> str | None:
    typedef_pattern = re.compile(rf"(?ms)^\s*typedef\b.*?\b{re.escape(name)}\s*;")
    match = typedef_pattern.search(raw_text)
    if match:
        return match.group(0).strip()

    simple_decl = re.compile(
        rf"(?ms)^\s*(?:static\s+)?(?:const\s+)?[A-Za-z_][\w\s:*<>]*\b{re.escape(name)}\b\s*(?:\[[^\]]*\])?\s*(?:=.*?)?;"
    )
    match = simple_decl.search(raw_text)
    if match:
        return match.group(0).strip()
    return None


def infer_typedef_from_raw_signature(source_text: str, raw_text: str, name: str) -> str | None:
    processed_match = re.search(
        rf"(?m)^\s*(?:static\s+)?{re.escape(name)}\s+([A-Za-z_]\w*)\s*\(",
        source_text,
    )
    if not processed_match:
        return None
    function_name = processed_match.group(1)
    raw_match = re.search(
        rf"(?m)^\s*(?:static\s+)?([A-Za-z_][\w\s:*]*?)\s+{re.escape(function_name)}\s*\(",
        raw_text,
    )
    if not raw_match:
        return None
    raw_type = " ".join(raw_match.group(1).split())
    if raw_type in {"void", "char", "short", "int", "long", "long long", "float", "double", "bool", "size_t"}:
        return f"typedef {raw_type} {name};"
    if raw_type.startswith("unsigned ") or raw_type.startswith("signed "):
        return f"typedef {raw_type} {name};"
    return None


def extract_raw_definitions(raw_text: str, source_text: str, identifiers: Iterable[str]) -> dict[str, str]:
    definitions: dict[str, str] = {}
    for name in identifiers:
        definition = collect_macro_definition(raw_text, name)
        if definition is None:
            definition = collect_typedef_or_global(raw_text, name)
        if definition is None:
            definition = infer_typedef_from_raw_signature(source_text, raw_text, name)
        if definition:
            definitions[name] = definition
    return definitions


def inferred_standard_headers(suite: str, identifiers: Iterable[str]) -> dict[str, str]:
    if suite != "cpp_transcoder":
        return {}
    headers: dict[str, str] = {}
    for name in identifiers:
        header = CPP_STANDARD_HEADERS.get(name)
        if header:
            headers[name] = header
    return headers


def write_reprocessed_source(
    source: Path,
    raw_source: Path | None,
    out_dir: Path,
    definitions: dict[str, str] | None = None,
    standard_headers: Iterable[str] = (),
    remove_static_markers: bool = False,
) -> Path:
    if source.stem.endswith("_processed"):
        repaired_name = f"{source.stem[:-len('_processed')]}_reprocessed{source.suffix}"
    else:
        repaired_name = f"{source.stem}_reprocessed{source.suffix}"
    repaired = out_dir / repaired_name
    raw_text = raw_source.read_text(errors="replace") if raw_source else ""
    source_text = source.read_text(errors="replace")
    if remove_static_markers:
        source_text = remove_static_function_markers(source_text)
    definitions = definitions or {}
    includes = collect_raw_includes(raw_text)
    prelude_lines = [
        "/* Auto-generated for LLVM emit: selected non-function raw definitions and standard headers needed by processed source. */",
        *[f"#include <{header}>" for header in sorted(set(standard_headers))],
        *includes,
        "",
    ]
    for name, definition in definitions.items():
        prelude_lines.append(f"/* raw non-function definition for {name} */")
        prelude_lines.append(definition)
        prelude_lines.append("")
    repaired.write_text("\n".join(prelude_lines) + "\n" + source_text)
    return repaired


def run_emit_with_raw_repairs(
    suite: str,
    source: Path,
    out_dir: Path,
    opt: str,
) -> tuple[bool, list[str], Path, list[str]]:
    ir_path = out_dir / f"{opt}.ll"
    ok, messages = run_emit(suite, source, ir_path, opt)
    source_text = source.read_text(errors="replace") if source.exists() else ""
    if ok:
        if ir_has_function_definitions(ir_path) or not has_static_function_definition(source_text):
            return ok, messages, source, []
        reprocessed_source = write_reprocessed_source(
            source,
            raw_source_for_processed(source),
            out_dir,
            remove_static_markers=True,
        )
        ok, messages = run_emit(suite, reprocessed_source, ir_path, opt)
        return ok, messages, reprocessed_source, ["removed static marker from function definitions"]

    raw_source = raw_source_for_processed(source)
    raw_text = raw_source.read_text(errors="replace") if raw_source else ""
    repaired_source = source
    definitions: dict[str, str] = {}
    standard_headers: set[str] = set()
    repair_notes: list[str] = []
    last_messages = messages

    for _ in range(12):
        missing = [name for name in missing_identifiers(last_messages) if name not in definitions]
        if not missing:
            break
        new_definitions = extract_raw_definitions(raw_text, source_text, missing) if raw_text else {}
        header_map = inferred_standard_headers(suite, missing)
        new_headers = {header for header in header_map.values() if header not in standard_headers}
        if not new_definitions and not new_headers:
            break
        definitions.update(new_definitions)
        standard_headers.update(new_headers)
        repair_notes.extend(f"{name} from {raw_source.name}" for name in new_definitions)
        repair_notes.extend(f"<{header}> for {name}" for name, header in header_map.items() if header in new_headers)
        repaired_source = write_reprocessed_source(source, raw_source, out_dir, definitions, standard_headers, remove_static_markers=True)
        ok, last_messages = run_emit(suite, repaired_source, ir_path, opt)
        if ok:
            return ok, last_messages, repaired_source, repair_notes

    return ok, last_messages, repaired_source, repair_notes


def parse_function_blocks(ir: str) -> dict[str, str]:
    blocks: dict[str, str] = {}
    lines = ir.splitlines()
    idx = 0
    while idx < len(lines):
        line = lines[idx]
        if not line.startswith("define "):
            idx += 1
            continue
        name_match = re.search(r"@([^(\s]+)\(", line)
        if not name_match:
            idx += 1
            continue
        name = name_match.group(1)
        block_lines = [line]
        idx += 1
        while idx < len(lines):
            block_lines.append(lines[idx])
            if lines[idx].strip() == "}":
                idx += 1
                break
            idx += 1
        block = "\n".join(block_lines)
        if is_source_function(name, line):
            blocks[name] = block
    return blocks


def is_source_function(name: str, define_line: str) -> bool:
    if " internal " in f" {define_line} ":
        return False
    if name.startswith("__") or name.startswith("_GLOBAL__sub_I_"):
        return False
    if "__cxx_global_var_init" in name:
        return False
    return True


def instruction_lines(blocks: dict[str, str]) -> list[str]:
    lines: list[str] = []
    for block in blocks.values():
        for line in block.splitlines():
            stripped = line.strip()
            if stripped and not stripped.startswith(";"):
                lines.append(stripped)
    return lines


def contains_op(line: str, op: str) -> bool:
    return bool(re.search(rf"(^|[=\s]){re.escape(op)}(\s|$)", line))


def detect_loop(blocks: dict[str, str], ir: str) -> tuple[bool, str]:
    if "llvm.loop" in ir:
        return True, "llvm.loop metadata"
    for block in blocks.values():
        labels: list[int] = []
        for line in block.splitlines():
            match = re.match(r"^\s*(\d+):", line)
            if match:
                labels.append(int(match.group(1)))
                continue
            branches = [int(x) for x in re.findall(r"label %(\d+)", line)]
            if labels and any(target <= labels[-1] for target in branches):
                return True, line
    return False, ""


def detect_recursion(blocks: dict[str, str]) -> list[str]:
    recursive = []
    for name, block in blocks.items():
        if re.search(rf"\bcall\b.*@{re.escape(name)}\(", block):
            recursive.append(name)
    return recursive


def analyze_ir(ir_path: Path) -> OptSummary:
    ir = ir_path.read_text(errors="replace")
    summary = OptSummary(status="ok")
    blocks = parse_function_blocks(ir)
    if not blocks:
        blocks = {"module": ir}
    body = "\n".join(blocks.values())
    lines = instruction_lines(blocks)

    for line in lines:
        for op in INTEGER_OPS:
            if contains_op(line, op):
                add_evidence(summary, "integer arithmetic", line)
        for op in BITWISE_OPS:
            if contains_op(line, op):
                add_evidence(summary, "bitwise/shift", line)
        for op in FLOAT_OPS:
            if contains_op(line, op):
                add_evidence(summary, "floating-point arithmetic", line)
        for op in COMPARE_OPS:
            if contains_op(line, op):
                add_evidence(summary, "comparisons", line)
        for op in CONTROL_OPS:
            if contains_op(line, op):
                add_evidence(summary, "control flow", line)
        for op in CAST_OPS:
            if contains_op(line, op):
                add_evidence(summary, "casts/conversions", line)
        for op in AGGREGATE_OPS:
            if contains_op(line, op):
                add_evidence(summary, "aggregates", line)
        for op in VECTOR_OPS:
            if contains_op(line, op):
                add_evidence(summary, "vector/SIMD", line)
        for op in EXCEPTION_OPS:
            if contains_op(line, op):
                add_evidence(summary, "C++/exception", line)
        for op in ATOMIC_OPS:
            if contains_op(line, op):
                add_evidence(summary, "atomics/volatile", line)

        if "call " in line or " tail call " in line:
            add_evidence(summary, "calls/intrinsics", line)
        if "unreachable" in line:
            add_evidence(summary, "unreachable", line)
        if "asm " in line:
            add_evidence(summary, "inline asm", line)
        if " volatile " in f" {line} ":
            add_evidence(summary, "atomics/volatile", line)
        if any(keyword in f" {line} " for keyword in UB_KEYWORDS):
            add_evidence(summary, "UB-related", line)
        if re.search(r"\w+\*", line) or "ptr " in line:
            add_evidence(summary, "memory/pointer", line)
        if any(contains_op(line, op) for op in ("alloca", "load", "store", "getelementptr")):
            add_evidence(summary, "memory/pointer", line)
        if re.search(r"<\s*\d+\s+x\s+[^>]+>", line):
            add_evidence(summary, "vector/SIMD", line)

    for line in ir.splitlines():
        stripped = line.strip()
        if stripped.startswith("%") and " type " in stripped:
            add_evidence(summary, "aggregates", stripped)
            if re.search(r"\[[0-9]+ x ", stripped):
                add_evidence(summary, "aggregates", stripped)
        elif stripped.startswith("@") and (" global " in stripped or " constant " in stripped):
            add_evidence(summary, "globals", stripped)
        elif stripped.startswith("declare "):
            add_evidence(summary, "external declarations", stripped)
        elif "personality" in stripped:
            add_evidence(summary, "C++/exception", stripped)

    has_loop, loop_evidence = detect_loop(blocks, ir)
    if has_loop:
        add_evidence(summary, "loop", loop_evidence)

    recursive = detect_recursion(blocks)
    for name in recursive:
        add_evidence(summary, "recursion", f"{name} calls itself")

    if "unreachable" in body:
        add_evidence(summary, "unreachable", "unreachable instruction")

    return summary


def ordered_features(features: Iterable[str]) -> list[str]:
    ordered = [feature for feature in FEATURE_ORDER if feature in features]
    extras = sorted(set(features) - set(ordered))
    return ordered + extras


def append_feature_lines(lines: list[str], features: Iterable[str]) -> None:
    ordered = ordered_features(features)
    if not ordered:
        lines.append("- Features: none")
        return
    lines.append("- Features:")
    for feature in ordered:
        lines.append(f"  - {feature}")


def render_summary(bench: BenchmarkSummary) -> str:
    lines = [
        f"# {bench.suite}/{bench.benchmark}",
        "",
        f"- Source: `{bench.copied_source.name if bench.copied_source else 'none'}`",
        f"- Source note: {bench.note}",
        "",
    ]
    for opt in OPTS:
        opt_summary = bench.opts[opt]
        lines.extend(
            [
                f"## {opt}",
                "",
                f"- Status: {opt_summary.status}",
            ]
        )
        append_feature_lines(lines, opt_summary.features)
        if opt_summary.warnings:
            lines.append("- Compiler messages:")
            for warning in opt_summary.warnings[:8]:
                lines.append(f"  - `{warning[:180]}`")
        if opt_summary.features:
            lines.append("- Evidence:")
            for feature in FEATURE_ORDER:
                if feature not in opt_summary.features:
                    continue
                evidence = opt_summary.evidence.get(feature, [])
                if evidence:
                    lines.append(f"  - {feature}: `{evidence[0]}`")
                else:
                    lines.append(f"  - {feature}")
        lines.append("")
    return "\n".join(lines).rstrip() + "\n"


def render_suite_readme(suite: str, benches: list[BenchmarkSummary]) -> str:
    lines = [
        f"# {suite}",
        "",
        f"- Benchmarks: {len(benches)}",
        "",
    ]
    for opt in OPTS:
        union: set[str] = set()
        ok = 0
        failed = 0
        unsupported = 0
        for bench in benches:
            summary = bench.opts[opt]
            union.update(summary.features)
            if summary.status == "ok":
                ok += 1
            elif summary.status.startswith("unsupported"):
                unsupported += 1
            else:
                failed += 1
        lines.extend(
            [
                f"## {opt}",
                "",
            ]
        )
        append_feature_lines(lines, union)
        lines.extend(
            [
                f"- Status counts: ok={ok}, failed={failed}, unsupported={unsupported}",
                "",
            ]
        )
    return "\n".join(lines).rstrip() + "\n"


def render_total(all_benches: list[BenchmarkSummary]) -> str:
    lines = [
        "# LLVM Feature Summary",
        "",
        f"- Suites: {', '.join(SUITES)}",
        f"- Benchmarks: {len(all_benches)}",
        "",
    ]
    for opt in OPTS:
        union: set[str] = set()
        ok = failed = unsupported = 0
        for bench in all_benches:
            summary = bench.opts[opt]
            union.update(summary.features)
            if summary.status == "ok":
                ok += 1
            elif summary.status.startswith("unsupported"):
                unsupported += 1
            else:
                failed += 1
        lines.extend(
            [
                f"## {opt}",
                "",
            ]
        )
        append_feature_lines(lines, union)
        lines.extend(
            [
                f"- Status counts: ok={ok}, failed={failed}, unsupported={unsupported}",
                "",
            ]
        )
    return "\n".join(lines).rstrip() + "\n"




def first_error(messages: Iterable[str]) -> str:
    collected: list[str] = []
    capture = False
    for message in messages:
        if "error:" in message:
            capture = True
        if capture:
            collected.append(message)
            if len(collected) >= 4:
                break
    return "\n".join(collected) if collected else "\n".join(list(messages)[:4])


def classify_failure(messages: Iterable[str]) -> str:
    text = "\n".join(messages)
    if "no matching function" in text:
        return "no matching function / overload mismatch"
    if "unknown type name" in text:
        return "missing type/typedef or header"
    if (
        "use of undeclared identifier" in text
        or "no template named" in text
        or "undeclared identifier" in text
    ):
        return "undeclared identifier or missing helper/header"
    return "other clang frontend error"


def render_failed(all_benches: list[BenchmarkSummary]) -> str:
    failed = [
        bench
        for bench in all_benches
        if bench.suite != "go_transcoder"
        and any(bench.opts[opt].status.startswith("failed") for opt in OPTS)
    ]
    by_suite: dict[str, int] = defaultdict(int)
    by_category: dict[str, int] = defaultdict(int)
    same_status = 0
    case_data = []
    for bench in failed:
        failed_opts = [opt for opt in OPTS if bench.opts[opt].status.startswith("failed")]
        representative_opt = failed_opts[0]
        messages = bench.opts[representative_opt].warnings
        category = classify_failure(messages)
        by_suite[bench.suite] += 1
        by_category[category] += 1
        first_errors = [first_error(bench.opts[opt].warnings) for opt in failed_opts]
        if len(set(first_errors)) == 1 and len(failed_opts) == len(OPTS):
            same_status += 1
        case_data.append((bench, failed_opts, category, first_errors[0]))

    lines = [
        "# Failed LLVM IR Emit Cases",
        "",
        "This file summarizes benchmarks whose processed C/C++ source could not be emitted to LLVM IR with `clang`/`clang++`. Go benchmarks are not listed here because they are `unsupported`, not clang failures.",
        "",
        "## Overview",
        "",
        f"- Failed benchmarks: {len(failed)}",
        f"- Same failed status across O0/O1/O2: {same_status}/{len(failed)}",
    ]
    for suite in SUITES:
        if suite == "go_transcoder":
            continue
        if by_suite.get(suite, 0):
            lines.append(f"- {suite}: {by_suite[suite]}")
    lines.extend(["", "## Reason Categories", ""])
    if by_category:
        for category, count in sorted(by_category.items(), key=lambda item: (-item[1], item[0])):
            lines.append(f"- {category}: {count}")
    else:
        lines.append("- none")
    lines.extend(["", "## Cases", ""])
    for bench, failed_opts, category, error_text in case_data:
        summary_path = Path("llvm") / bench.suite / bench.benchmark / "SUMMARY.md"
        source_path = Path("llvm") / bench.suite / bench.benchmark / (bench.copied_source.name if bench.copied_source else "none")
        opt_text = "/".join(failed_opts)
        lines.extend(
            [
                f"### {bench.suite}/{bench.benchmark}",
                "",
                f"- Summary: `{summary_path}`",
                f"- Source: `{source_path}`",
                f"- Failed opts: {opt_text}",
                f"- Reason category: {category}",
                "- First clang error:",
                "",
                "```text",
                error_text,
                "```",
                "",
            ]
        )
    return "\n".join(lines).rstrip() + "\n"


def process_benchmark(input_root: Path, output_root: Path, suite: str, bench_dir: Path) -> BenchmarkSummary:
    source, note = source_candidates(bench_dir, suite, bench_dir.name)
    out_dir = output_root / suite / bench_dir.name
    out_dir.mkdir(parents=True, exist_ok=True)
    copied_source = None
    opts: dict[str, OptSummary] = {}

    if source is not None:
        copied_source = out_dir / source.name
        shutil.copy2(source, copied_source)

    if source is None:
        for opt in OPTS:
            opts[opt] = OptSummary(status=f"failed: {note}")
    elif suite == "go_transcoder":
        for opt in OPTS:
            opts[opt] = OptSummary(status="unsupported: missing Go/TinyGo LLVM emitter")
    else:
        repair_notes_by_opt: dict[str, list[str]] = {}
        repaired_sources: set[Path] = set()
        for opt in OPTS:
            ir_path = out_dir / f"{opt}.ll"
            ok, messages, emit_source, repair_notes = run_emit_with_raw_repairs(suite, source, out_dir, opt)
            if repair_notes:
                repair_notes_by_opt[opt] = repair_notes
                repaired_sources.add(emit_source)
            if ok:
                summary = analyze_ir(ir_path)
                summary.warnings = messages
            else:
                summary = OptSummary(status="failed: clang emit error")
                summary.warnings = messages
            opts[opt] = summary
        if repaired_sources:
            copied_source = sorted(repaired_sources)[0]
            repaired_names = sorted({note for notes in repair_notes_by_opt.values() for note in notes})
            note = f"{note}; reprocessed source: {', '.join(repaired_names)}"

    bench = BenchmarkSummary(
        suite=suite,
        benchmark=bench_dir.name,
        source=source,
        copied_source=copied_source,
        note=note,
        opts=opts,
    )
    (out_dir / "SUMMARY.md").write_text(render_summary(bench))
    return bench


def iter_benchmarks(
    input_root: Path, suites: Iterable[str], benchmarks: set[str]
) -> Iterable[tuple[str, Path]]:
    for suite in suites:
        suite_dir = input_root / suite
        if not suite_dir.exists():
            continue
        for bench_dir in sorted(p for p in suite_dir.iterdir() if p.is_dir()):
            if benchmarks and bench_dir.name not in benchmarks:
                continue
            yield suite, bench_dir


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--benchmark-root", default="benchmark", type=Path)
    parser.add_argument("--output-root", default="llvm", type=Path)
    parser.add_argument("--suite", choices=SUITES, action="append")
    parser.add_argument("--benchmark", action="append", default=[])
    parser.add_argument("--limit", type=int, default=0, help="Process only the first N benchmarks.")
    args = parser.parse_args()

    suites = tuple(args.suite) if args.suite else SUITES
    args.output_root.mkdir(parents=True, exist_ok=True)

    by_suite: dict[str, list[BenchmarkSummary]] = {suite: [] for suite in suites}
    all_benches: list[BenchmarkSummary] = []
    count = 0
    for suite, bench_dir in iter_benchmarks(args.benchmark_root, suites, set(args.benchmark)):
        if args.limit and count >= args.limit:
            break
        bench = process_benchmark(args.benchmark_root, args.output_root, suite, bench_dir)
        by_suite.setdefault(suite, []).append(bench)
        all_benches.append(bench)
        count += 1

    for suite, benches in by_suite.items():
        suite_out = args.output_root / suite
        suite_out.mkdir(parents=True, exist_ok=True)
        (suite_out / "README.md").write_text(render_suite_readme(suite, benches))
    (args.output_root / "TOTAL.md").write_text(render_total(all_benches))
    (args.output_root / "FAILED.md").write_text(render_failed(all_benches))

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
