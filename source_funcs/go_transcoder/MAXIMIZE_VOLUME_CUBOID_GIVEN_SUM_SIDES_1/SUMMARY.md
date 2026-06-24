# go_transcoder/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_1

- Source: `MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_1.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_1_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow

## O1

- Status: ok
- Features:
  - integer arithmetic
  - control flow

## O2

- Status: ok
- Features:
  - integer arithmetic
  - control flow
