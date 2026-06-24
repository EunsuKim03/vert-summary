# cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/PRINT_WORDS_STRING_REVERSE_ORDER.rs`
- Emit source: `rust_funcs/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/PRINT_WORDS_STRING_REVERSE_ORDER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PRINT_WORDS_STRING_REVERSE_ORDER, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/O0.ll`
- Message:

```text
warning: comparison is useless due to type limits
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/PRINT_WORDS_STRING_REVERSE_ORDER_emit.rs:26:11
   |
26 |     while i >= 0 {
   |           ^^^^^^
   |
   = note: `#[warn(unused_comparisons)]` on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/O1.ll`
- Message:

```text
warning: comparison is useless due to type limits
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/PRINT_WORDS_STRING_REVERSE_ORDER_emit.rs:26:11
   |
26 |     while i >= 0 {
   |           ^^^^^^
   |
   = note: `#[warn(unused_comparisons)]` on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/O2.ll`
- Message:

```text
warning: comparison is useless due to type limits
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRINT_WORDS_STRING_REVERSE_ORDER/PRINT_WORDS_STRING_REVERSE_ORDER_emit.rs:26:11
   |
26 |     while i >= 0 {
   |           ^^^^^^
   |
   = note: `#[warn(unused_comparisons)]` on by default
warning: 1 warning emitted
```
