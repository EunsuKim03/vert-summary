# c_crown/0004_avl_minvalue

- Kind: crate-copy
- Status: ok
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0004_avl_minvalue/minvalue/src/minvalue.rs`
- Emit source: `rust_funcs/c_crown/0004_avl_minvalue/0004_avl_minvalue_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0004_avl_minvalue/minvalue`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_crown/0004_avl_minvalue/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/c_crown/0004_avl_minvalue/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/c_crown/0004_avl_minvalue/O2.ll`
