# go_transcoder/ARRAY_ELEMENT_MOVED_K_USING_SINGLE_MOVES

- Source: `ARRAY_ELEMENT_MOVED_K_USING_SINGLE_MOVES.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `ARRAY_ELEMENT_MOVED_K_USING_SINGLE_MOVES_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - unreachable
  - memory/pointer
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
  - loop
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - loop
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - UB-related
