# c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2/MAXIMUM_TRIPLET_SUM_ARRAY_2.rs`
- Emit source: `rust_funcs/c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2/MAXIMUM_TRIPLET_SUM_ARRAY_2_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_TRIPLET_SUM_ARRAY_2, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2/MAXIMUM_TRIPLET_SUM_ARRAY_2_emit.rs:37:5
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
...
37 |     max_a + max_b + max_c
   |     ^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2/MAXIMUM_TRIPLET_SUM_ARRAY_2_emit.rs:37:5
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
...
37 |     max_a + max_b + max_c
   |     ^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2/MAXIMUM_TRIPLET_SUM_ARRAY_2_emit.rs:37:5
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
...
37 |     max_a + max_b + max_c
   |     ^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
