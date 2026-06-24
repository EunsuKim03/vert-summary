# go_transcoder/MAXIMIZE_SUM_ARRII

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/MAXIMIZE_SUM_ARRII/MAXIMIZE_SUM_ARRII.rs`
- Emit source: `rust_funcs/go_transcoder/MAXIMIZE_SUM_ARRII/MAXIMIZE_SUM_ARRII_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMIZE_SUM_ARRII, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/go_transcoder/MAXIMIZE_SUM_ARRII/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/go_transcoder/MAXIMIZE_SUM_ARRII/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/go_transcoder/MAXIMIZE_SUM_ARRII/O2.ll`
