# c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1.rs`
- Emit source: `rust_funcs/c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FLOOR_IN_A_SORTED_ARRAY_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
   |                                                         --- expected `i32` because of return type
22 |     if low > high {
23 |         return -1.;
   |                ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
   |                                                         --- expected `i32` because of return type
22 |     if low > high {
23 |         return -1.;
   |                ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
   |                                                         --- expected `i32` because of return type
22 |     if low > high {
23 |         return -1.;
   |                ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
