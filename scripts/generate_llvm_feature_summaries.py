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


def format_feature_list(features: Iterable[str]) -> str:
    ordered = [feature for feature in FEATURE_ORDER if feature in features]
    extras = sorted(set(features) - set(ordered))
    return ", ".join(ordered + extras) if ordered or extras else "none"


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
                f"- Features: {format_feature_list(opt_summary.features)}",
            ]
        )
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
                f"- Feature union: {format_feature_list(union)}",
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
                f"- Feature union: {format_feature_list(union)}",
                f"- Status counts: ok={ok}, failed={failed}, unsupported={unsupported}",
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
        for opt in OPTS:
            ir_path = out_dir / f"{opt}.ll"
            ok, messages = run_emit(suite, source, ir_path, opt)
            if ok:
                summary = analyze_ir(ir_path)
                summary.warnings = messages
            else:
                summary = OptSummary(status="failed: clang emit error")
                summary.warnings = messages
            opts[opt] = summary

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

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
