# cpp_transcoder/CHECK_LINE_PASSES_ORIGIN

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CHECK_LINE_PASSES_ORIGIN/CHECK_LINE_PASSES_ORIGIN.rs`
- Emit source: `rust_funcs/cpp_transcoder/CHECK_LINE_PASSES_ORIGIN/CHECK_LINE_PASSES_ORIGIN_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_LINE_PASSES_ORIGIN, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LINE_PASSES_ORIGIN/CHECK_LINE_PASSES_ORIGIN_emit.rs:23:5
   |
22 | fn f_gold(x1: i32, y1: i32, x2: i32, y2: i32) -> i32 {
   |                                                  --- expected `i32` because of return type
23 |     x1 * (y2 - y1) == y1 * (x2 - x1)
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LINE_PASSES_ORIGIN/CHECK_LINE_PASSES_ORIGIN_emit.rs:23:5
   |
22 | fn f_gold(x1: i32, y1: i32, x2: i32, y2: i32) -> i32 {
   |                                                  --- expected `i32` because of return type
23 |     x1 * (y2 - y1) == y1 * (x2 - x1)
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LINE_PASSES_ORIGIN/CHECK_LINE_PASSES_ORIGIN_emit.rs:23:5
   |
22 | fn f_gold(x1: i32, y1: i32, x2: i32, y2: i32) -> i32 {
   |                                                  --- expected `i32` because of return type
23 |     x1 * (y2 - y1) == y1 * (x2 - x1)
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
