# go_transcoder/SUM_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING

- Source: `SUM_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING.go`
- Source note: Go source-function extraction from `benchmark/go_transcoder`; `func main` harness removed.
- Emit source: `SUM_NODES_K_TH_LEVEL_TREE_REPRESENTED_STRING_emit.go` adds `//go:export f_gold` so TinyGo keeps the benchmark function in LLVM IR.
- Feature note: features below are extracted from `O*_func.ll`, the `@f_gold` block only. Full `O*.ll` files still include TinyGo runtime/support code.

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - unreachable
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - memory/pointer
  - casts/conversions
  - UB-related
