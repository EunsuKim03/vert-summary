# go_transcoder

- Benchmarks: 343
- Source layout: `source_funs/go_transcoder/<benchmark>/<benchmark>.go`
- Extraction: copied Go source functions with `func main` harness removed.
- Emit: TinyGo with `//go:export f_gold` in `<benchmark>_emit.go`.
- Feature scope: `@f_gold` only, from `O*_func.ll`; full `O*.ll` includes TinyGo runtime/support code.

## O0

- Features:
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - recursion
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
- Status counts: ok=343, failed=0, unsupported=0

## O1

- Features:
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - atomics/volatile
  - UB-related
- Status counts: ok=343, failed=0, unsupported=0

## O2

- Features:
  - integer arithmetic
  - bitwise/shift
  - floating-point arithmetic
  - comparisons
  - control flow
  - loop
  - recursion
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - atomics/volatile
  - UB-related
- Status counts: ok=343, failed=0, unsupported=0
