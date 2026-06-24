# cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHANGE_BITS_CAN_MADE_ONE_FLIP_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_emit.rs:27:12
   |
21 | fn f_gold(str: String) -> i32 {
   |                           --- expected `i32` because of return type
...
27 |     return sum == n as u32 - 1 || sum == 1;
   |            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_emit.rs:27:12
   |
21 | fn f_gold(str: String) -> i32 {
   |                           --- expected `i32` because of return type
...
27 |     return sum == n as u32 - 1 || sum == 1;
   |            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_emit.rs:27:12
   |
21 | fn f_gold(str: String) -> i32 {
   |                           --- expected `i32` because of return type
...
27 |     return sum == n as u32 - 1 || sum == 1;
   |            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
