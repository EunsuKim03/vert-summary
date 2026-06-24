# go_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER/FIND_SUM_EVEN_FACTORS_NUMBER.rs`
- Emit source: `rust_funcs/go_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER/FIND_SUM_EVEN_FACTORS_NUMBER_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `FIND_SUM_EVEN_FACTORS_NUMBER, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER/FIND_SUM_EVEN_FACTORS_NUMBER_emit.rs:35:13
   |
35 |             n /= i as i32;
   |             ^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
25 | fn f_gold(mut n: i32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```

### O1

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER/FIND_SUM_EVEN_FACTORS_NUMBER_emit.rs:35:13
   |
35 |             n /= i as i32;
   |             ^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
25 | fn f_gold(mut n: i32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```

### O2

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER/FIND_SUM_EVEN_FACTORS_NUMBER_emit.rs:35:13
   |
35 |             n /= i as i32;
   |             ^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
25 | fn f_gold(mut n: i32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```
