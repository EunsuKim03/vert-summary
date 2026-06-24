# go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER.rs`
- Emit source: `rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_MINIMUM_SUM_FACTORS_NUMBER, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:18
   |
26 |     while i*i <= num as f32  {
   |                  ^^^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:15
   |
26 |     while i*i <= num as f32  {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:18
   |
26 |     while i*i <= num as f32  {
   |                  ^^^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:15
   |
26 |     while i*i <= num as f32  {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:18
   |
26 |     while i*i <= num as f32  {
   |                  ^^^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:15
   |
26 |     while i*i <= num as f32  {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```
