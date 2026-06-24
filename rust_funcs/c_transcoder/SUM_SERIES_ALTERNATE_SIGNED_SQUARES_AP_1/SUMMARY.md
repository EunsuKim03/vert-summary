# c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1.rs`
- Emit source: `rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:22:25
   |
22 | fn f_gold(n:i32, a:[i32;n as u32]) -> i32 {
   |           -             ^
   |           |
   |           this would need to be a `const`
error[E0277]: cannot multiply `{integer}` by `f32`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:29:11
   |
29 |     (sum) * (n as f32) / ((2*n-1) as f32) as i32
   |           ^ no implementation for `{integer} * f32`
```

### O1

- Status: failed
- Message:

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:22:25
   |
22 | fn f_gold(n:i32, a:[i32;n as u32]) -> i32 {
   |           -             ^
   |           |
   |           this would need to be a `const`
error[E0277]: cannot multiply `{integer}` by `f32`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:29:11
   |
29 |     (sum) * (n as f32) / ((2*n-1) as f32) as i32
   |           ^ no implementation for `{integer} * f32`
```

### O2

- Status: failed
- Message:

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:22:25
   |
22 | fn f_gold(n:i32, a:[i32;n as u32]) -> i32 {
   |           -             ^
   |           |
   |           this would need to be a `const`
error[E0277]: cannot multiply `{integer}` by `f32`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:29:11
   |
29 |     (sum) * (n as f32) / ((2*n-1) as f32) as i32
   |           ^ no implementation for `{integer} * f32`
```
