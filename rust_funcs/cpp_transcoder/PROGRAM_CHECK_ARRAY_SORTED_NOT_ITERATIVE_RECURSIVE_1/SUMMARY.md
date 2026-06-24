# cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], n: u32) -> i32 {
   |                                    --- expected `i32` because of return type
22 |     if n == 0 || n == 1 {
23 |         return 1.0;
   |                ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_emit.rs:26:16
    |
 26 |         if arr[i - 1] > arr[i] {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], n: u32) -> i32 {
   |                                    --- expected `i32` because of return type
22 |     if n == 0 || n == 1 {
23 |         return 1.0;
   |                ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_emit.rs:26:16
    |
 26 |         if arr[i - 1] > arr[i] {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], n: u32) -> i32 {
   |                                    --- expected `i32` because of return type
22 |     if n == 0 || n == 1 {
23 |         return 1.0;
   |                ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_emit.rs:26:16
    |
 26 |         if arr[i - 1] > arr[i] {
```
