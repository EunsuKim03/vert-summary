# go_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS

- Source: `SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - unreachable
  - memory/pointer
  - calls/intrinsics
  - UB-related

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - unreachable
  - calls/intrinsics
  - UB-related

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - unreachable
  - calls/intrinsics
  - UB-related
