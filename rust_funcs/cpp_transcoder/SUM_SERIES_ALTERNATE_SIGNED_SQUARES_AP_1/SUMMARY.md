# cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:22:4
   |
21 | fn f_gold(n: i32, a: [f32;2]) -> i32 {
   |                                  --- expected `i32` because of return type
22 |    (n as f32) * ((a[0] * a[0]) - (a[(2 * n - 1) as usize] * a[(2 * n - 1) as usize])) /  (2 * n - 1) as f32
   |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:22:4
   |
21 | fn f_gold(n: i32, a: [f32;2]) -> i32 {
   |                                  --- expected `i32` because of return type
22 |    (n as f32) * ((a[0] * a[0]) - (a[(2 * n - 1) as usize] * a[(2 * n - 1) as usize])) /  (2 * n - 1) as f32
   |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:22:4
   |
21 | fn f_gold(n: i32, a: [f32;2]) -> i32 {
   |                                  --- expected `i32` because of return type
22 |    (n as f32) * ((a[0] * a[0]) - (a[(2 * n - 1) as usize] * a[(2 * n - 1) as usize])) /  (2 * n - 1) as f32
   |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
