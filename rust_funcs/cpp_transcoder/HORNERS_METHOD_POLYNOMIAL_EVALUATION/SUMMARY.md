# cpp_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION.rs`
- Emit source: `rust_funcs/cpp_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `HORNERS_METHOD_POLYNOMIAL_EVALUATION, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION_emit.rs:27:3
   |
22 | fn f_gold(poly: [f32;2], n: i32, x: f32) -> i32 {
   |                                             --- expected `i32` because of return type
...
27 |   result
   |   ^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION_emit.rs:27:3
   |
22 | fn f_gold(poly: [f32;2], n: i32, x: f32) -> i32 {
   |                                             --- expected `i32` because of return type
...
27 |   result
   |   ^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION_emit.rs:27:3
   |
22 | fn f_gold(poly: [f32;2], n: i32, x: f32) -> i32 {
   |                                             --- expected `i32` because of return type
...
27 |   result
   |   ^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
