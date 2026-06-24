# go_transcoder/CHECK_NUMBER_IS_PERFECT_SQUARE_USING_ADDITIONSUBTRACTION

- Source: `CHECK_NUMBER_IS_PERFECT_SQUARE_USING_ADDITIONSUBTRACTION.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `CHECK_NUMBER_IS_PERFECT_SQUARE_USING_ADDITIONSUBTRACTION_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - UB-related

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - UB-related
