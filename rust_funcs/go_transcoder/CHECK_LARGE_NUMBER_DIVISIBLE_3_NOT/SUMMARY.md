# go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT.rs`
- Emit source: `rust_funcs/go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT_emit.rs:26:6
   |
21 | fn f_gold(str : &str) -> i32 {
   |                          --- expected `i32` because of return type
...
26 |      digit_sum % 3 == 0
   |      ^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT_emit.rs:26:6
   |
21 | fn f_gold(str : &str) -> i32 {
   |                          --- expected `i32` because of return type
...
26 |      digit_sum % 3 == 0
   |      ^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT_emit.rs:26:6
   |
21 | fn f_gold(str : &str) -> i32 {
   |                          --- expected `i32` because of return type
...
26 |      digit_sum % 3 == 0
   |      ^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
