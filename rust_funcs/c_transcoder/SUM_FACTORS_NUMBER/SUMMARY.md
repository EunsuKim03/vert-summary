# c_transcoder/SUM_FACTORS_NUMBER

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/SUM_FACTORS_NUMBER/SUM_FACTORS_NUMBER.rs`
- Emit source: `rust_funcs/c_transcoder/SUM_FACTORS_NUMBER/SUM_FACTORS_NUMBER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SUM_FACTORS_NUMBER, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/SUM_FACTORS_NUMBER/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/SUM_FACTORS_NUMBER/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/SUM_FACTORS_NUMBER/O2.ll`
