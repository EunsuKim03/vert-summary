#!/usr/bin/env python3
"""Extract @f_gold function bodies from generated Rust LLVM IR modules."""

from __future__ import annotations

import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
RUST_FUNCS = ROOT / "rust_funcs"
OPTS = ("O0", "O1", "O2")


DEFINE_F_GOLD = re.compile(r'^define\b.*@f_gold\(')


def extract_f_gold_blocks(ir_text: str) -> list[str]:
    lines = ir_text.splitlines()
    blocks: list[str] = []
    idx = 0
    while idx < len(lines):
        line = lines[idx]
        if not DEFINE_F_GOLD.search(line):
            idx += 1
            continue

        block_lines = [line]
        idx += 1
        while idx < len(lines):
            block_lines.append(lines[idx])
            if lines[idx].strip() == "}":
                idx += 1
                break
            idx += 1
        blocks.append("\n".join(block_lines))
    return blocks


def main() -> None:
    created = 0
    empty = 0
    for opt in OPTS:
        for ir_path in sorted(RUST_FUNCS.glob(f"*/*/{opt}.ll")):
            out_path = ir_path.with_name(f"{opt}_func.ll")
            blocks = extract_f_gold_blocks(ir_path.read_text(errors="replace"))
            if blocks:
                out_path.write_text("\n\n".join(blocks) + "\n")
                created += 1
            else:
                out_path.write_text("")
                empty += 1
    print(f"created_nonempty={created} empty={empty}")


if __name__ == "__main__":
    main()
