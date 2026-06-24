# cpp_transcoder/CEILING_IN_A_SORTED_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY.rs`
- Emit source: `rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CEILING_IN_A_SORTED_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:24:16
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
   |                                                         --- expected `i32` because of return type
...
24 |         return low;
   |                ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:34:5
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:24:16
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
   |                                                         --- expected `i32` because of return type
...
24 |         return low;
   |                ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:34:5
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:24:16
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
   |                                                         --- expected `i32` because of return type
...
24 |         return low;
   |                ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:34:5
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
```
