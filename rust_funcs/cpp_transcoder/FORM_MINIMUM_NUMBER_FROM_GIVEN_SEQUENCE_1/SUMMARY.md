# cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0600]: cannot apply unary operator `-` to type `usize`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1_emit.rs:29:30
   |
29 |             for j in (i-1)..=-1 {
   |                              ^^ cannot apply unary operator `-`
   |
   = note: unsigned values cannot be negated
help: you may have meant the maximum value of `usize`
   |
29 -             for j in (i-1)..=-1 {
29 +             for j in (i-1)..=usize::MAX {
   |
```

### O1

- Status: failed
- Message:

```text
error[E0600]: cannot apply unary operator `-` to type `usize`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1_emit.rs:29:30
   |
29 |             for j in (i-1)..=-1 {
   |                              ^^ cannot apply unary operator `-`
   |
   = note: unsigned values cannot be negated
help: you may have meant the maximum value of `usize`
   |
29 -             for j in (i-1)..=-1 {
29 +             for j in (i-1)..=usize::MAX {
   |
```

### O2

- Status: failed
- Message:

```text
error[E0600]: cannot apply unary operator `-` to type `usize`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1_emit.rs:29:30
   |
29 |             for j in (i-1)..=-1 {
   |                              ^^ cannot apply unary operator `-`
   |
   = note: unsigned values cannot be negated
help: you may have meant the maximum value of `usize`
   |
29 -             for j in (i-1)..=-1 {
29 +             for j in (i-1)..=usize::MAX {
   |
```
