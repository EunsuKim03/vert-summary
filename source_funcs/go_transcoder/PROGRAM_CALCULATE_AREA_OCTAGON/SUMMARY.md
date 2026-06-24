# go_transcoder/PROGRAM_CALCULATE_AREA_OCTAGON

- Source: `PROGRAM_CALCULATE_AREA_OCTAGON.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `PROGRAM_CALCULATE_AREA_OCTAGON_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related

## O1

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions

## O2

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - casts/conversions
