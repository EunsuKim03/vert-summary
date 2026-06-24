# cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY.rs`
- Emit source: `rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
23 |     if n < 3.0 {
24 |         return f32::NAN
   |                ^^^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_emit.rs:34:5
   |
22 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
23 |     if n < 3.0 {
24 |         return f32::NAN
   |                ^^^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_emit.rs:34:5
   |
22 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
23 |     if n < 3.0 {
24 |         return f32::NAN
   |                ^^^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_emit.rs:34:5
   |
22 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
```
