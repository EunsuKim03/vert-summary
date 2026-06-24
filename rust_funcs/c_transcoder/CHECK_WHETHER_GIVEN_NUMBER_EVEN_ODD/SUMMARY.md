# c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD.rs`
- Emit source: `rust_funcs/c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_emit.rs:22:5
   |
21 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
22 |     n % 2 == 0
   |     ^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_emit.rs:22:5
   |
21 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
22 |     n % 2 == 0
   |     ^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_emit.rs:22:5
   |
21 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
22 |     n % 2 == 0
   |     ^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
