# cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER/COUNT_SET_BITS_IN_AN_INTEGER.rs`
- Emit source: `rust_funcs/cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER/COUNT_SET_BITS_IN_AN_INTEGER_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `COUNT_SET_BITS_IN_AN_INTEGER, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER/COUNT_SET_BITS_IN_AN_INTEGER_emit.rs:26:9
   |
26 |         n >>= 1;
   |         ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
22 | fn f_gold(mut n: u32) -> u32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```

### O1

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER/COUNT_SET_BITS_IN_AN_INTEGER_emit.rs:26:9
   |
26 |         n >>= 1;
   |         ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
22 | fn f_gold(mut n: u32) -> u32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```

### O2

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER/COUNT_SET_BITS_IN_AN_INTEGER_emit.rs:26:9
   |
26 |         n >>= 1;
   |         ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
22 | fn f_gold(mut n: u32) -> u32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```
