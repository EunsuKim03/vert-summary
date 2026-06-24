# cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_emit.rs:36:1
   |
21 | fn f_gold(arr: &mut [f32], n: i32) -> i32 {
   |                                       --- expected `i32` because of return type
...
36 | res
   | ^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_emit.rs:36:1
   |
21 | fn f_gold(arr: &mut [f32], n: i32) -> i32 {
   |                                       --- expected `i32` because of return type
...
36 | res
   | ^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_emit.rs:36:1
   |
21 | fn f_gold(arr: &mut [f32], n: i32) -> i32 {
   |                                       --- expected `i32` because of return type
...
36 | res
   | ^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
