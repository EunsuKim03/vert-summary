# cpp_transcoder/POLICEMEN_CATCH_THIEVES

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [char]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/POLICEMEN_CATCH_THIEVES/POLICEMEN_CATCH_THIEVES.rs`
- Emit source: `rust_funcs/cpp_transcoder/POLICEMEN_CATCH_THIEVES/POLICEMEN_CATCH_THIEVES_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `POLICEMEN_CATCH_THIEVES, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/POLICEMEN_CATCH_THIEVES/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/POLICEMEN_CATCH_THIEVES/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/POLICEMEN_CATCH_THIEVES/O2.ll`
