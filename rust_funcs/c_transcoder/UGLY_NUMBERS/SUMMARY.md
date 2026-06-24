# c_transcoder/UGLY_NUMBERS

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/UGLY_NUMBERS/UGLY_NUMBERS.rs`
- Emit source: `rust_funcs/c_transcoder/UGLY_NUMBERS/UGLY_NUMBERS_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `UGLY_NUMBERS, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/UGLY_NUMBERS/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/UGLY_NUMBERS/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/UGLY_NUMBERS/O2.ll`
