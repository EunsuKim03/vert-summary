# go_transcoder/HARDY_RAMANUJAN_THEOREM

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM.rs`
- Emit source: `rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `HARDY_RAMANUJAN_THEOREM, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:18
   |
31 |     while i*i <= n as f32 {
   |                  ^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:15
   |
31 |     while i*i <= n as f32 {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:18
   |
31 |     while i*i <= n as f32 {
   |                  ^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:15
   |
31 |     while i*i <= n as f32 {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:18
   |
31 |     while i*i <= n as f32 {
   |                  ^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:15
   |
31 |     while i*i <= n as f32 {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```
