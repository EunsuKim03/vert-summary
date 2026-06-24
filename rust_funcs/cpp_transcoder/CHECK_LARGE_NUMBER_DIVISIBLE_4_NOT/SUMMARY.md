# cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT.rs`
- Emit source: `rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:24:23
   |
21 | fn f_gold(str: String) -> i32 {
   |                           --- expected `i32` because of return type
...
24 |     if n == 1 {return (str.chars().nth(0).unwrap() as i32 - '0' as i32) % 4 == 0}
   |                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:27:5
   |
21 | fn f_gold(str: String) -> i32 {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:24:23
   |
21 | fn f_gold(str: String) -> i32 {
   |                           --- expected `i32` because of return type
...
24 |     if n == 1 {return (str.chars().nth(0).unwrap() as i32 - '0' as i32) % 4 == 0}
   |                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:27:5
   |
21 | fn f_gold(str: String) -> i32 {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:24:23
   |
21 | fn f_gold(str: String) -> i32 {
   |                           --- expected `i32` because of return type
...
24 |     if n == 1 {return (str.chars().nth(0).unwrap() as i32 - '0' as i32) % 4 == 0}
   |                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:27:5
   |
21 | fn f_gold(str: String) -> i32 {
```
