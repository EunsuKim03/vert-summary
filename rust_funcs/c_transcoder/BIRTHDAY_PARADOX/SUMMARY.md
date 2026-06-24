# c_transcoder/BIRTHDAY_PARADOX

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/BIRTHDAY_PARADOX/BIRTHDAY_PARADOX.rs`
- Emit source: `rust_funcs/c_transcoder/BIRTHDAY_PARADOX/BIRTHDAY_PARADOX_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `BIRTHDAY_PARADOX, compile=1, bolero=1, bounded_kani=1, full_kani=1`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/BIRTHDAY_PARADOX/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/BIRTHDAY_PARADOX/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/BIRTHDAY_PARADOX/O2.ll`
