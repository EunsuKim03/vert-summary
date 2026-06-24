# go_transcoder/COUNT_NUMBERS_THAT_DONT_CONTAIN_3

- Source: `COUNT_NUMBERS_THAT_DONT_CONTAIN_3.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `COUNT_NUMBERS_THAT_DONT_CONTAIN_3_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - recursion
  - unreachable
  - memory/pointer
  - calls/intrinsics
  - UB-related

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - unreachable
  - calls/intrinsics
  - UB-related

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - unreachable
  - calls/intrinsics
  - UB-related
