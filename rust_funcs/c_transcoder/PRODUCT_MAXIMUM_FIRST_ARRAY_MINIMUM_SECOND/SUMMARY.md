# c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr1:i32 [i32]`; repaired malformed array parameter `arr2:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND.rs`
- Emit source: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/O2.ll`
