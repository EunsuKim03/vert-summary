# go_transcoder/AREA_OF_A_HEXAGON

- Source: `AREA_OF_A_HEXAGON.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `AREA_OF_A_HEXAGON_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
  - memory/pointer
  - calls/intrinsics
  - UB-related

## O1

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow

## O2

- Status: ok
- Features:
  - floating-point arithmetic
  - control flow
