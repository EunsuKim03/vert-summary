# go_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER

- Source: `K_TH_PRIME_FACTOR_GIVEN_NUMBER.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `K_TH_PRIME_FACTOR_GIVEN_NUMBER_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
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
  - UB-related

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
  - unreachable
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
  - unreachable
  - casts/conversions
  - calls/intrinsics
  - UB-related
