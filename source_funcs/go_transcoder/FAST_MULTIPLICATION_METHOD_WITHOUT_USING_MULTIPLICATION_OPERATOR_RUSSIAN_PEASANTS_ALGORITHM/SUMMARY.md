# go_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM

- Source: `FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
