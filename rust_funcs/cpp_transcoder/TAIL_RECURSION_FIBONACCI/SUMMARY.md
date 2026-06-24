# cpp_transcoder/TAIL_RECURSION_FIBONACCI

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/TAIL_RECURSION_FIBONACCI/TAIL_RECURSION_FIBONACCI.rs`
- Emit source: `rust_funcs/cpp_transcoder/TAIL_RECURSION_FIBONACCI/TAIL_RECURSION_FIBONACCI_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `TAIL_RECURSION_FIBONACCI, compile=1, bolero=1, bounded_kani=1, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/TAIL_RECURSION_FIBONACCI/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/TAIL_RECURSION_FIBONACCI/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/TAIL_RECURSION_FIBONACCI/O2.ll`
