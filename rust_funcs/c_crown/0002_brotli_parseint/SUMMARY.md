# c_crown/0002_brotli_parseint

- Kind: crate-copy
- Status: ok
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0002_brotli_parseint/brotli_parseint/src/brotli_parseint.rs`
- Emit source: `rust_funcs/c_crown/0002_brotli_parseint/0002_brotli_parseint_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0002_brotli_parseint/brotli_parseint`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_crown/0002_brotli_parseint/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/c_crown/0002_brotli_parseint/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/c_crown/0002_brotli_parseint/O2.ll`
