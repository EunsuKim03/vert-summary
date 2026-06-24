# cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER.rs`
- Emit source: `rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:22:21
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |    if x == 1{return y == 1;}
   |                     ^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:25:4
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:22:21
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |    if x == 1{return y == 1;}
   |                     ^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:25:4
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:22:21
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |    if x == 1{return y == 1;}
   |                     ^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:25:4
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
```
