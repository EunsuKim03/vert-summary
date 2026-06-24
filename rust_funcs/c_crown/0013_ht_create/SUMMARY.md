# c_crown/0013_ht_create

- Kind: crate-copy
- Status: ok
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0013_ht_create/ht_complex/src/ht.rs`
- Emit source: `rust_funcs/c_crown/0013_ht_create/0013_ht_create_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0013_ht_create/ht_complex`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_crown/0013_ht_create/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/c_crown/0013_ht_create/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/c_crown/0013_ht_create/O2.ll`
