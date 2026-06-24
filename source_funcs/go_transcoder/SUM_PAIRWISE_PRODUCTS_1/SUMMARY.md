# go_transcoder/SUM_PAIRWISE_PRODUCTS_1

- Source: `SUM_PAIRWISE_PRODUCTS_1.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `SUM_PAIRWISE_PRODUCTS_1_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
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
