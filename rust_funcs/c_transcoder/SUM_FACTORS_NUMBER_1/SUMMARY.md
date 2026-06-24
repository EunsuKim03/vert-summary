# c_transcoder/SUM_FACTORS_NUMBER_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1.rs`
- Emit source: `rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SUM_FACTORS_NUMBER_1, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error: cast cannot be followed by a method call
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:23:16
   |
23 |     while i <= n as f32.sqrt() {
   |                ^^^^^^^^
   |
help: try surrounding the expression in parentheses
   |
23 |     while i <= (n as f32).sqrt() {
   |                +        +
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:27:13
```

### O1

- Status: failed
- Message:

```text
error: cast cannot be followed by a method call
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:23:16
   |
23 |     while i <= n as f32.sqrt() {
   |                ^^^^^^^^
   |
help: try surrounding the expression in parentheses
   |
23 |     while i <= (n as f32).sqrt() {
   |                +        +
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:27:13
```

### O2

- Status: failed
- Message:

```text
error: cast cannot be followed by a method call
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:23:16
   |
23 |     while i <= n as f32.sqrt() {
   |                ^^^^^^^^
   |
help: try surrounding the expression in parentheses
   |
23 |     while i <= (n as f32).sqrt() {
   |                +        +
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:27:13
```
