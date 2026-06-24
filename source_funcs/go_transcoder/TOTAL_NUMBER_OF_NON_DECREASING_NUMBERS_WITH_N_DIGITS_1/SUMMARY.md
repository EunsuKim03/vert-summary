# go_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1

- Source: `TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - comparisons
  - control flow
  - casts/conversions

## O1

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - comparisons
  - control flow
  - casts/conversions

## O2

- Status: ok
- Features:
  - integer arithmetic
  - floating-point arithmetic
  - comparisons
  - control flow
  - casts/conversions
