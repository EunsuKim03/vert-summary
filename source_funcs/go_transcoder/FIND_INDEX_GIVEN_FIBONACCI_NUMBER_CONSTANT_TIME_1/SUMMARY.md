# go_transcoder/FIND_INDEX_GIVEN_FIBONACCI_NUMBER_CONSTANT_TIME_1

- Source: `FIND_INDEX_GIVEN_FIBONACCI_NUMBER_CONSTANT_TIME_1.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `FIND_INDEX_GIVEN_FIBONACCI_NUMBER_CONSTANT_TIME_1_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
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
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - casts/conversions
  - calls/intrinsics
  - UB-related

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
  - UB-related
