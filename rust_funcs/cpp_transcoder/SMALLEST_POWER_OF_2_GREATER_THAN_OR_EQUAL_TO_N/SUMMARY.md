# cpp_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N.rs`
- Emit source: `rust_funcs/cpp_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N_emit.rs:27:9
   |
27 |         n >>= 1;
   |         ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> u32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```

### O1

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N_emit.rs:27:9
   |
27 |         n >>= 1;
   |         ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> u32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```

### O2

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N_emit.rs:27:9
   |
27 |         n >>= 1;
   |         ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> u32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```
