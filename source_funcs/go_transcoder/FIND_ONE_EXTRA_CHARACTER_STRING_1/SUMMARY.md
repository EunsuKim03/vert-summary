# go_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1

- Source: `FIND_ONE_EXTRA_CHARACTER_STRING_1.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `FIND_ONE_EXTRA_CHARACTER_STRING_1_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
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
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - memory/pointer
  - UB-related
