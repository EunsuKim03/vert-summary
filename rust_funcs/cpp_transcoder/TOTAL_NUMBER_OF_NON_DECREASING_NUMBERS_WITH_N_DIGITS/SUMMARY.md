# cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS.rs`
- Emit source: `rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_emit.rs:24:26
   |
23 | fn f_gold(n: i32) -> i32 {
   |           - this would need to be a `const`
24 |     let mut dp = [[0u32; n as usize + 1]; 10];
   |                          ^
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0435`.
```

### O1

- Status: failed
- Message:

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_emit.rs:24:26
   |
23 | fn f_gold(n: i32) -> i32 {
   |           - this would need to be a `const`
24 |     let mut dp = [[0u32; n as usize + 1]; 10];
   |                          ^
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0435`.
```

### O2

- Status: failed
- Message:

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_emit.rs:24:26
   |
23 | fn f_gold(n: i32) -> i32 {
   |           - this would need to be a `const`
24 |     let mut dp = [[0u32; n as usize + 1]; 10];
   |                          ^
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0435`.
```
