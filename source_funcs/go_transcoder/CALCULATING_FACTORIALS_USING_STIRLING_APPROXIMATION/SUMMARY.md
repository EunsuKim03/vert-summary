# go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION

- Source: `CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related

## O1

- Status: ok
- Features:
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
