# go_transcoder/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM

- Source: `RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - calls/intrinsics
  - UB-related

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics
