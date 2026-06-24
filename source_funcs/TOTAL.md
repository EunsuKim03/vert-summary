# LLVM Feature Summary

- Suites: c_crown, c_transcoder, cpp_transcoder, go_transcoder
- Benchmarks: 1432
- Note: `go_transcoder` features are extracted from TinyGo `@f_gold` blocks (`O*_func.ll`), while full `O*.ll` includes TinyGo runtime/support code.

## O0

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
  - C++/exception
  - UB-related
  - globals
  - external declarations
- Status counts: ok=1432, failed=0, unsupported=0

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
  - C++/exception
  - atomics/volatile
  - UB-related
  - globals
  - external declarations
- Status counts: ok=1432, failed=0, unsupported=0

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
  - vector/SIMD
  - C++/exception
  - atomics/volatile
  - UB-related
  - globals
  - external declarations
- Status counts: ok=1432, failed=0, unsupported=0
