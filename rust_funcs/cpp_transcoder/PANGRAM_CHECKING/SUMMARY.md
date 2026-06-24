# cpp_transcoder/PANGRAM_CHECKING

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PANGRAM_CHECKING/PANGRAM_CHECKING.rs`
- Emit source: `rust_funcs/cpp_transcoder/PANGRAM_CHECKING/PANGRAM_CHECKING_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PANGRAM_CHECKING, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PANGRAM_CHECKING/PANGRAM_CHECKING_emit.rs:36:12
   |
36 |         if !mark[i]  {
   |            ^^^^^^^^ expected `bool`, found `i32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PANGRAM_CHECKING/PANGRAM_CHECKING_emit.rs:36:12
   |
36 |         if !mark[i]  {
   |            ^^^^^^^^ expected `bool`, found `i32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PANGRAM_CHECKING/PANGRAM_CHECKING_emit.rs:36:12
   |
36 |         if !mark[i]  {
   |            ^^^^^^^^ expected `bool`, found `i32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
