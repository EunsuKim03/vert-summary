# go_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY

- Source: `SMALLEST_SUM_CONTIGUOUS_SUBARRAY.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `SMALLEST_SUM_CONTIGUOUS_SUBARRAY_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
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
  - comparisons
  - control flow
  - unreachable
  - memory/pointer
  - calls/intrinsics
  - UB-related

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - unreachable
  - memory/pointer
  - calls/intrinsics
  - UB-related
