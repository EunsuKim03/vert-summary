# c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1.rs`
- Emit source: `rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs:21:25
   |
20 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
21 |     if n == 1.0 {return 1.0;}
   |                         ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs:39:5
   |
20 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs:21:25
   |
20 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
21 |     if n == 1.0 {return 1.0;}
   |                         ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs:39:5
   |
20 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs:21:25
   |
20 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
21 |     if n == 1.0 {return 1.0;}
   |                         ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs:39:5
   |
20 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
```
