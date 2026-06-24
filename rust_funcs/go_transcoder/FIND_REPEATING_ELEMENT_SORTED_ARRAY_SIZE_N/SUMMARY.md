# go_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N.rs`
- Emit source: `rust_funcs/go_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if low > high {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if low > high {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if low > high {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
