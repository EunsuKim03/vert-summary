# cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH.rs`
- Emit source: `rust_funcs/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_emit.rs:36:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
36 |     (max_end-k as usize+1) as f32
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_emit.rs:36:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
36 |     (max_end-k as usize+1) as f32
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_emit.rs:36:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
36 |     (max_end-k as usize+1) as f32
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
