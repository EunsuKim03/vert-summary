# cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:24:45
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32{
   |                                                 --- expected `i32` because of return type
...
24 |         if mid == arr[mid as usize] {return mid;}
   |                                             ^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:25:22
    |
 25 |         if mid > arr[mid as u32] {return f_gold(arr, mid + 1.0, high);}
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:24:45
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32{
   |                                                 --- expected `i32` because of return type
...
24 |         if mid == arr[mid as usize] {return mid;}
   |                                             ^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:25:22
    |
 25 |         if mid > arr[mid as u32] {return f_gold(arr, mid + 1.0, high);}
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:24:45
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32{
   |                                                 --- expected `i32` because of return type
...
24 |         if mid == arr[mid as usize] {return mid;}
   |                                             ^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:25:22
    |
 25 |         if mid > arr[mid as u32] {return f_gold(arr, mid + 1.0, high);}
```
