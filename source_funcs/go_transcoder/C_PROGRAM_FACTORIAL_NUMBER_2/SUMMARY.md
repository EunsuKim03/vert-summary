# go_transcoder/C_PROGRAM_FACTORIAL_NUMBER_2

- Source: `C_PROGRAM_FACTORIAL_NUMBER_2.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `C_PROGRAM_FACTORIAL_NUMBER_2_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - calls/intrinsics

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
