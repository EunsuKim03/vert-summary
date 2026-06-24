# go_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1

- Source: `STEINS_ALGORITHM_FOR_FINDING_GCD_1.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `STEINS_ALGORITHM_FOR_FINDING_GCD_1_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
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

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics
