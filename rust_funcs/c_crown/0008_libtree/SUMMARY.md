# c_crown/0008_libtree

- Kind: crate-copy
- Status: ok
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0008_libtree/libtree/src/libtree.rs`
- Emit source: `rust_funcs/c_crown/0008_libtree/0008_libtree_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0008_libtree/libtree`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_crown/0008_libtree/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/c_crown/0008_libtree/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/c_crown/0008_libtree/O2.ll`
