# cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES.rs`
- Emit source: `rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES_emit.rs:24:16
   |
22 | fn f_gold(arr: &mut [f32], N: f32) -> i32 {
   |                                       --- expected `i32` because of return type
23 |     if N < 3.0 {
24 |         return 0.0;
   |                ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES_emit.rs:32:5
   |
22 | fn f_gold(arr: &mut [f32], N: f32) -> i32 {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES_emit.rs:24:16
   |
22 | fn f_gold(arr: &mut [f32], N: f32) -> i32 {
   |                                       --- expected `i32` because of return type
23 |     if N < 3.0 {
24 |         return 0.0;
   |                ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES_emit.rs:32:5
   |
22 | fn f_gold(arr: &mut [f32], N: f32) -> i32 {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES_emit.rs:24:16
   |
22 | fn f_gold(arr: &mut [f32], N: f32) -> i32 {
   |                                       --- expected `i32` because of return type
23 |     if N < 3.0 {
24 |         return 0.0;
   |                ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES_emit.rs:32:5
   |
22 | fn f_gold(arr: &mut [f32], N: f32) -> i32 {
```
