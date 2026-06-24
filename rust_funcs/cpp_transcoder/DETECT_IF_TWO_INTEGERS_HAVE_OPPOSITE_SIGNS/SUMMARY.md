# cpp_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS.rs`
- Emit source: `rust_funcs/cpp_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS_emit.rs:22:5
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |     (x ^ y) < 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS_emit.rs:22:5
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |     (x ^ y) < 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS_emit.rs:22:5
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |     (x ^ y) < 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
