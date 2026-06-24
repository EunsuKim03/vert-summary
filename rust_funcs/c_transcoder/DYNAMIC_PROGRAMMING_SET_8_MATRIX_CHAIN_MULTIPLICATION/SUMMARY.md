# c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION.rs`
- Emit source: `rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:23:24
   |
22 | fn f_gold(p: &[f32;2], i: u32, j: u32) -> i32  {
   |                                           --- expected `i32` because of return type
23 |     if i == j { return 0.0; }
   |                        ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:27:65
    |
 27 |         let count =   f_gold(p, i, k) + f_gold(p, k + 1, j) + p[i - 1] * p[k] * p[j];
    |                                                                 ^^^^^ slice indices are of type `usize` or ranges of `usize`
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:23:24
   |
22 | fn f_gold(p: &[f32;2], i: u32, j: u32) -> i32  {
   |                                           --- expected `i32` because of return type
23 |     if i == j { return 0.0; }
   |                        ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:27:65
    |
 27 |         let count =   f_gold(p, i, k) + f_gold(p, k + 1, j) + p[i - 1] * p[k] * p[j];
    |                                                                 ^^^^^ slice indices are of type `usize` or ranges of `usize`
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:23:24
   |
22 | fn f_gold(p: &[f32;2], i: u32, j: u32) -> i32  {
   |                                           --- expected `i32` because of return type
23 |     if i == j { return 0.0; }
   |                        ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:27:65
    |
 27 |         let count =   f_gold(p, i, k) + f_gold(p, k + 1, j) + p[i - 1] * p[k] * p[j];
    |                                                                 ^^^^^ slice indices are of type `usize` or ranges of `usize`
```
