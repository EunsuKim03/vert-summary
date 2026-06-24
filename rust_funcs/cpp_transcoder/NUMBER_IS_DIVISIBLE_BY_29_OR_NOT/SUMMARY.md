# cpp_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT.rs`
- Emit source: `rust_funcs/cpp_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `NUMBER_IS_DIVISIBLE_BY_29_OR_NOT, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT_emit.rs:31:5
   |
25 | fn f_gold(mut n: i32) -> i32 {
   |                          --- expected `i32` because of return type
...
31 |     n % 29 == 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT_emit.rs:31:5
   |
25 | fn f_gold(mut n: i32) -> i32 {
   |                          --- expected `i32` because of return type
...
31 |     n % 29 == 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT_emit.rs:31:5
   |
25 | fn f_gold(mut n: i32) -> i32 {
   |                          --- expected `i32` because of return type
...
31 |     n % 29 == 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
