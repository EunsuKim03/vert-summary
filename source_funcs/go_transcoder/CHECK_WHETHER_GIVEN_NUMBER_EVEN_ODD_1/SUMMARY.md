# go_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1

- Source: `CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow

## O1

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow

## O2

- Status: ok
- Features:
  - bitwise/shift
  - comparisons
  - control flow
