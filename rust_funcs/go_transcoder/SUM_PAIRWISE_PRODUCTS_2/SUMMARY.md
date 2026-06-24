# go_transcoder/SUM_PAIRWISE_PRODUCTS_2

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2.rs`
- Emit source: `rust_funcs/go_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SUM_PAIRWISE_PRODUCTS_2, compile=1, bolero=1, bounded_kani=1, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_emit.rs:37:5
   |
36 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
37 |     (n as f32 * (n + 1) as f32 * (n + 2) as f32 * (3 * n + 1) as f32) / 24.0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_emit.rs:37:5
   |
36 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
37 |     (n as f32 * (n + 1) as f32 * (n + 2) as f32 * (3 * n + 1) as f32) / 24.0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_emit.rs:37:5
   |
36 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
37 |     (n as f32 * (n + 1) as f32 * (n + 2) as f32 * (3 * n + 1) as f32) / 24.0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
