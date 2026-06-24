# cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1_emit.rs:26:16
   |
24 | fn f_gold(arr: &mut [f32], n: u32, key: f32, capacity: u32) -> i32 {
   |                                                                --- expected `i32` because of return type
25 |     if n >= capacity {
26 |         return n;
   |                ^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
26 |         return n.try_into().unwrap();
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1_emit.rs:26:16
   |
24 | fn f_gold(arr: &mut [f32], n: u32, key: f32, capacity: u32) -> i32 {
   |                                                                --- expected `i32` because of return type
25 |     if n >= capacity {
26 |         return n;
   |                ^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
26 |         return n.try_into().unwrap();
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1_emit.rs:26:16
   |
24 | fn f_gold(arr: &mut [f32], n: u32, key: f32, capacity: u32) -> i32 {
   |                                                                --- expected `i32` because of return type
25 |     if n >= capacity {
26 |         return n;
   |                ^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
26 |         return n.try_into().unwrap();
```
