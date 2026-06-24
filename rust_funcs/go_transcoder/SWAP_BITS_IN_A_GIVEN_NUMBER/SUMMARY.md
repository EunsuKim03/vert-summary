# go_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER.rs`
- Emit source: `rust_funcs/go_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SWAP_BITS_IN_A_GIVEN_NUMBER, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs:27:5
   |
21 | fn f_gold(x: u32, p1: u32, p2: u32, n: u32) -> i32 {
   |                                                --- expected `i32` because of return type
...
27 |     result
   |     ^^^^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
27 |     result.try_into().unwrap()
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs:27:5
   |
21 | fn f_gold(x: u32, p1: u32, p2: u32, n: u32) -> i32 {
   |                                                --- expected `i32` because of return type
...
27 |     result
   |     ^^^^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
27 |     result.try_into().unwrap()
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs:27:5
   |
21 | fn f_gold(x: u32, p1: u32, p2: u32, n: u32) -> i32 {
   |                                                --- expected `i32` because of return type
...
27 |     result
   |     ^^^^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
27 |     result.try_into().unwrap()
```
