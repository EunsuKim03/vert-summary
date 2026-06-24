# cpp_transcoder/PERFECT_REVERSIBLE_STRING

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PERFECT_REVERSIBLE_STRING/PERFECT_REVERSIBLE_STRING.rs`
- Emit source: `rust_funcs/cpp_transcoder/PERFECT_REVERSIBLE_STRING/PERFECT_REVERSIBLE_STRING_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PERFECT_REVERSIBLE_STRING, compile=1, bolero=1, bounded_kani=1, full_kani=1`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PERFECT_REVERSIBLE_STRING/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PERFECT_REVERSIBLE_STRING/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PERFECT_REVERSIBLE_STRING/O2.ll`
