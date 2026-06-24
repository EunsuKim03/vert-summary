# go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1.rs`
- Emit source: `rust_funcs/go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1_emit.rs:25:13
   |
25 |             n >>= 1;
   |             ^^^^^^^ cannot assign to immutable argument
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
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1_emit.rs:25:13
   |
25 |             n >>= 1;
   |             ^^^^^^^ cannot assign to immutable argument
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
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1_emit.rs:25:13
   |
25 |             n >>= 1;
   |             ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```
