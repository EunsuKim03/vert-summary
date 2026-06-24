# go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY.rs`
- Emit source: `rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32, key: f32) -> i32 {
   |                                                           --- expected `i32` because of return type
23 |     if high < low {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:31:23
   |
31 |         return f_gold(&arr, mid + 1.0, high, key);
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32, key: f32) -> i32 {
   |                                                           --- expected `i32` because of return type
23 |     if high < low {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:31:23
   |
31 |         return f_gold(&arr, mid + 1.0, high, key);
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32, key: f32) -> i32 {
   |                                                           --- expected `i32` because of return type
23 |     if high < low {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:31:23
   |
31 |         return f_gold(&arr, mid + 1.0, high, key);
```
