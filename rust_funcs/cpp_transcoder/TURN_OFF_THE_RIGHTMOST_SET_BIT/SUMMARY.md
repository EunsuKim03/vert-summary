# cpp_transcoder/TURN_OFF_THE_RIGHTMOST_SET_BIT

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/TURN_OFF_THE_RIGHTMOST_SET_BIT/TURN_OFF_THE_RIGHTMOST_SET_BIT.rs`
- Emit source: `rust_funcs/cpp_transcoder/TURN_OFF_THE_RIGHTMOST_SET_BIT/TURN_OFF_THE_RIGHTMOST_SET_BIT_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `TURN_OFF_THE_RIGHTMOST_SET_BIT, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TURN_OFF_THE_RIGHTMOST_SET_BIT/TURN_OFF_THE_RIGHTMOST_SET_BIT_emit.rs:25:5
   |
24 | fn f_gold(n: u32) -> i32 {
   |                      --- expected `i32` because of return type
25 |     n & (n-1)
   |     ^^^^^^^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
25 |     (n & (n-1)).try_into().unwrap()
   |     +         +++++++++++++++++++++
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TURN_OFF_THE_RIGHTMOST_SET_BIT/TURN_OFF_THE_RIGHTMOST_SET_BIT_emit.rs:25:5
   |
24 | fn f_gold(n: u32) -> i32 {
   |                      --- expected `i32` because of return type
25 |     n & (n-1)
   |     ^^^^^^^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
25 |     (n & (n-1)).try_into().unwrap()
   |     +         +++++++++++++++++++++
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TURN_OFF_THE_RIGHTMOST_SET_BIT/TURN_OFF_THE_RIGHTMOST_SET_BIT_emit.rs:25:5
   |
24 | fn f_gold(n: u32) -> i32 {
   |                      --- expected `i32` because of return type
25 |     n & (n-1)
   |     ^^^^^^^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
25 |     (n & (n-1)).try_into().unwrap()
   |     +         +++++++++++++++++++++
```
