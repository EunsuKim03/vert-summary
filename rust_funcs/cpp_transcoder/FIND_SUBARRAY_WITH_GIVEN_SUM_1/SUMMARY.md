# cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM_1/FIND_SUBARRAY_WITH_GIVEN_SUM_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM_1/FIND_SUBARRAY_WITH_GIVEN_SUM_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_SUBARRAY_WITH_GIVEN_SUM_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM_1/FIND_SUBARRAY_WITH_GIVEN_SUM_1_emit.rs:34:22
   |
24 | fn f_gold(arr: [f32;2], n: f32, sum: f32) -> i32 {
   |                                              --- expected `i32` because of return type
...
34 |              return  1.0;
   |                      ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM_1/FIND_SUBARRAY_WITH_GIVEN_SUM_1_emit.rs:34:22
   |
24 | fn f_gold(arr: [f32;2], n: f32, sum: f32) -> i32 {
   |                                              --- expected `i32` because of return type
...
34 |              return  1.0;
   |                      ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM_1/FIND_SUBARRAY_WITH_GIVEN_SUM_1_emit.rs:34:22
   |
24 | fn f_gold(arr: [f32;2], n: f32, sum: f32) -> i32 {
   |                                              --- expected `i32` because of return type
...
34 |              return  1.0;
   |                      ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
