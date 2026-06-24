# cpp_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE.rs`
- Emit source: `rust_funcs/cpp_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE_emit.rs:35:5
   |
22 | fn f_gold(low: f32, high: f32) -> i32 {
   |                                   --- expected `i32` because of return type
...
35 |     res
   |     ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE_emit.rs:35:5
   |
22 | fn f_gold(low: f32, high: f32) -> i32 {
   |                                   --- expected `i32` because of return type
...
35 |     res
   |     ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE_emit.rs:35:5
   |
22 | fn f_gold(low: f32, high: f32) -> i32 {
   |                                   --- expected `i32` because of return type
...
35 |     res
   |     ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
