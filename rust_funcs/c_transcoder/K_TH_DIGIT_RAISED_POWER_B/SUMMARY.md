# c_transcoder/K_TH_DIGIT_RAISED_POWER_B

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B.rs`
- Emit source: `rust_funcs/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `K_TH_DIGIT_RAISED_POWER_B, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_emit.rs:23:23
    |
 23 |     let mut p = a.pow(b);
    |                   --- ^ expected `u32`, found `i32`
    |                   |
    |                   arguments to this method are incorrect
    |
note: method defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/mod.rs:295:5
    |
295 | /     int_impl! {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_emit.rs:23:23
    |
 23 |     let mut p = a.pow(b);
    |                   --- ^ expected `u32`, found `i32`
    |                   |
    |                   arguments to this method are incorrect
    |
note: method defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/mod.rs:295:5
    |
295 | /     int_impl! {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_emit.rs:23:23
    |
 23 |     let mut p = a.pow(b);
    |                   --- ^ expected `u32`, found `i32`
    |                   |
    |                   arguments to this method are incorrect
    |
note: method defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/mod.rs:295:5
    |
295 | /     int_impl! {
```
