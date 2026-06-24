# go_transcoder/NUMBER_UNIQUE_RECTANGLES_FORMED_USING_N_UNIT_SQUARES

- Source: `NUMBER_UNIQUE_RECTANGLES_FORMED_USING_N_UNIT_SQUARES.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `NUMBER_UNIQUE_RECTANGLES_FORMED_USING_N_UNIT_SQUARES_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics
