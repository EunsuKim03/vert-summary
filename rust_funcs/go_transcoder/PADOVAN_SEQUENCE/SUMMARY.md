# go_transcoder/PADOVAN_SEQUENCE

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/PADOVAN_SEQUENCE/PADOVAN_SEQUENCE.rs`
- Emit source: `rust_funcs/go_transcoder/PADOVAN_SEQUENCE/PADOVAN_SEQUENCE_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PADOVAN_SEQUENCE, compile=1, bolero=1, bounded_kani=1, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/go_transcoder/PADOVAN_SEQUENCE/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/go_transcoder/PADOVAN_SEQUENCE/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/go_transcoder/PADOVAN_SEQUENCE/O2.ll`
