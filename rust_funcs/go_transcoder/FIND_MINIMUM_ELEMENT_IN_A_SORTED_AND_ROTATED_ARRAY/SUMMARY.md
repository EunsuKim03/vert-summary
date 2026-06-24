# go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY.rs`
- Emit source: `rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: u32, high: u32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if high < low {
24 |         return arr[0];
   |                ^^^^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:27:20
    |
 27 |         return arr[low];
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: u32, high: u32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if high < low {
24 |         return arr[0];
   |                ^^^^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:27:20
    |
 27 |         return arr[low];
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: u32, high: u32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if high < low {
24 |         return arr[0];
   |                ^^^^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:27:20
    |
 27 |         return arr[low];
```
