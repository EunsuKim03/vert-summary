# go_transcoder/FIND_PERIMETER_CYLINDER

- Source: `FIND_PERIMETER_CYLINDER.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `FIND_PERIMETER_CYLINDER_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - control flow

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - control flow
