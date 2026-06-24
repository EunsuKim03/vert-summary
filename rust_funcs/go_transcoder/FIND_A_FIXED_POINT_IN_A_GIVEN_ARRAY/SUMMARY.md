# go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY.rs`
- Emit source: `rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:25:20
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
...
25 |             return i;
   |                    ^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:29:5
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:25:20
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
...
25 |             return i;
   |                    ^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:29:5
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:25:20
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
...
25 |             return i;
   |                    ^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:29:5
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
```
