# cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K.rs`
- Emit source: `rust_funcs/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `COUNT_PAIRS_DIFFERENCE_EQUAL_K, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K_emit.rs:30:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
30 |     count
   |     ^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K_emit.rs:30:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
30 |     count
   |     ^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K_emit.rs:30:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
30 |     count
   |     ^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
