# go_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2

- Source: `MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_2_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
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

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
