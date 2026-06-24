# go_transcoder/COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ

- Source: `COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `COUNT_FREQUENCY_K_MATRIX_SIZE_N_MATRIXI_J_IJ_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow

## O1

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow

## O2

- Status: ok
- Features:
  - integer arithmetic
  - bitwise/shift
  - comparisons
  - control flow
