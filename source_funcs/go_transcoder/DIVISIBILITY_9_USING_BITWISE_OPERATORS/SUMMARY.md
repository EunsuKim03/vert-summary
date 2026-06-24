# go_transcoder/DIVISIBILITY_9_USING_BITWISE_OPERATORS

- Source: `DIVISIBILITY_9_USING_BITWISE_OPERATORS.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `DIVISIBILITY_9_USING_BITWISE_OPERATORS_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics
  - UB-related

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - UB-related
