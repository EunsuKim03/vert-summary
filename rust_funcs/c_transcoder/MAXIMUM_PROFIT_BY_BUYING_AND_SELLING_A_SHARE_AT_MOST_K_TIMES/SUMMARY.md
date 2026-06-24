# c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES.rs`
- Emit source: `rust_funcs/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_emit.rs:31:5
   |
22 |  fn f_gold(price: [f32;2], n: f32, k: f32) -> i32 {
   |                                               --- expected `i32` because of return type
...
31 |     profit[k as usize][n as usize-1]
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_emit.rs:31:5
   |
22 |  fn f_gold(price: [f32;2], n: f32, k: f32) -> i32 {
   |                                               --- expected `i32` because of return type
...
31 |     profit[k as usize][n as usize-1]
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_emit.rs:31:5
   |
22 |  fn f_gold(price: [f32;2], n: f32, k: f32) -> i32 {
   |                                               --- expected `i32` because of return type
...
31 |     profit[k as usize][n as usize-1]
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
