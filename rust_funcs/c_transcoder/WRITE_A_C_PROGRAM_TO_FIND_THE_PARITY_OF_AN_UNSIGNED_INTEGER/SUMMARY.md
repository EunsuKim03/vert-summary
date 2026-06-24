# c_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER.rs`
- Emit source: `rust_funcs/c_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER_emit.rs:25:9
   |
25 |         n = n & (n - 1);
   |         ^^^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```

### O1

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER_emit.rs:25:9
   |
25 |         n = n & (n - 1);
   |         ^^^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```

### O2

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER_emit.rs:25:9
   |
25 |         n = n & (n - 1);
   |         ^^^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```
