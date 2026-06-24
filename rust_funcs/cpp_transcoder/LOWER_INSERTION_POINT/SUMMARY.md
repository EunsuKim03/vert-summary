# cpp_transcoder/LOWER_INSERTION_POINT

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT.rs`
- Emit source: `rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `LOWER_INSERTION_POINT, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
   |                                            --- expected `i32` because of return type
22 |     if x < arr[0] {
23 |         return 0.;
   |                ^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:36:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
   |                                            --- expected `i32` because of return type
22 |     if x < arr[0] {
23 |         return 0.;
   |                ^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:36:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
   |                                            --- expected `i32` because of return type
22 |     if x < arr[0] {
23 |         return 0.;
   |                ^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:36:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
```
