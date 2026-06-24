# go_transcoder/SWAP_ALL_ODD_AND_EVEN_BITS

- Source: `SWAP_ALL_ODD_AND_EVEN_BITS.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `SWAP_ALL_ODD_AND_EVEN_BITS_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - bitwise/shift
  - control flow

## O1

- Status: ok
- Features:
  - bitwise/shift
  - control flow

## O2

- Status: ok
- Features:
  - bitwise/shift
  - control flow
