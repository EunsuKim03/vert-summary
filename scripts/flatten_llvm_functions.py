#!/usr/bin/env python3
"""Flatten generated LLVM IR modules by optimization level."""

from __future__ import annotations

import argparse
import shutil
from pathlib import Path
from typing import Iterable

OPTS = ("O0", "O1", "O2")


def iter_ir_files(input_root: Path, opt: str) -> Iterable[Path]:
    for path in sorted(input_root.glob(f"*/*/{opt}.ll")):
        if path.parts[-3] == "go_transcoder":
            continue
        yield path


def flattened_name(path: Path) -> str:
    suite = path.parts[-3]
    benchmark = path.parts[-2]
    return f"{suite}__{benchmark}.ll"


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input-root", default="llvm", type=Path)
    parser.add_argument("--output-root", default="llvm_funcs", type=Path)
    args = parser.parse_args()

    args.output_root.mkdir(parents=True, exist_ok=True)
    for opt in OPTS:
        opt_out = args.output_root / opt
        opt_out.mkdir(parents=True, exist_ok=True)
        for old in opt_out.glob("*.ll"):
            old.unlink()
        for ir_path in iter_ir_files(args.input_root, opt):
            shutil.copy2(ir_path, opt_out / flattened_name(ir_path))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
