# go_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER/K_TH_PRIME_FACTOR_GIVEN_NUMBER.rs`
- Emit source: `rust_funcs/go_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER/K_TH_PRIME_FACTOR_GIVEN_NUMBER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `K_TH_PRIME_FACTOR_GIVEN_NUMBER, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the trait bound `f32: From<i32>` is not satisfied
  --> /root/es/vert/vert/rust_funcs/go_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER/K_TH_PRIME_FACTOR_GIVEN_NUMBER_emit.rs:29:20
   |
29 |     while i * i <= f32::from(n)  {
   |                    ^^^ the trait `From<i32>` is not implemented for `f32`
   |
   = help: the following other types implement trait `From<T>`:
             `f32` implements `From<bool>`
             `f32` implements `From<i16>`
             `f32` implements `From<i8>`
             `f32` implements `From<u16>`
             `f32` implements `From<u8>`
```

### O1

- Status: failed
- Message:

```text
error[E0277]: the trait bound `f32: From<i32>` is not satisfied
  --> /root/es/vert/vert/rust_funcs/go_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER/K_TH_PRIME_FACTOR_GIVEN_NUMBER_emit.rs:29:20
   |
29 |     while i * i <= f32::from(n)  {
   |                    ^^^ the trait `From<i32>` is not implemented for `f32`
   |
   = help: the following other types implement trait `From<T>`:
             `f32` implements `From<bool>`
             `f32` implements `From<i16>`
             `f32` implements `From<i8>`
             `f32` implements `From<u16>`
             `f32` implements `From<u8>`
```

### O2

- Status: failed
- Message:

```text
error[E0277]: the trait bound `f32: From<i32>` is not satisfied
  --> /root/es/vert/vert/rust_funcs/go_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER/K_TH_PRIME_FACTOR_GIVEN_NUMBER_emit.rs:29:20
   |
29 |     while i * i <= f32::from(n)  {
   |                    ^^^ the trait `From<i32>` is not implemented for `f32`
   |
   = help: the following other types implement trait `From<T>`:
             `f32` implements `From<bool>`
             `f32` implements `From<i16>`
             `f32` implements `From<i8>`
             `f32` implements `From<u16>`
             `f32` implements `From<u8>`
```
