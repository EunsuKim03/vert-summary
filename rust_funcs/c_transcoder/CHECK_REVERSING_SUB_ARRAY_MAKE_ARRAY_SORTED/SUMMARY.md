# c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED.rs`
- Emit source: `rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/O2.ll`
