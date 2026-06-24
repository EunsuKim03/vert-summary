# go_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER.rs`
- Emit source: `rust_funcs/go_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PROGRAM_CHECK_PLUS_PERFECT_NUMBER, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_emit.rs:34:5
   |
21 | fn f_gold(x: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
34 |     sum == temp
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_emit.rs:34:5
   |
21 | fn f_gold(x: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
34 |     sum == temp
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_emit.rs:34:5
   |
21 | fn f_gold(x: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
34 |     sum == temp
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
