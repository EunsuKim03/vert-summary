# go_transcoder/GCD_ELEMENTS_GIVEN_RANGE

- Source: `GCD_ELEMENTS_GIVEN_RANGE.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `GCD_ELEMENTS_GIVEN_RANGE_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - comparisons
  - control flow

## O1

- Status: ok
- Features:
  - comparisons
  - control flow

## O2

- Status: ok
- Features:
  - comparisons
  - control flow
