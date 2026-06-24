# c_transcoder/SUBSET_SUM_DIVISIBLE_M

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M.rs`
- Emit source: `rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: yes
- CSV rows:
  - `SUBSET_SUM_DIVISIBLE_M, compile=1, bolero=0, bounded_kani=0, full_kani=0`
  - `SUBSET_SUM_DIVISIBLE_M, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_emit.rs:29:16
   |
29 |             if dp[j as usize] {
   |                ^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_emit.rs:36:16
   |
36 |             if temp[j as usize] {
   |                ^^^^^^^^^^^^^^^^ expected `bool`, found integer
error: aborting due to 2 previous errors
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_emit.rs:29:16
   |
29 |             if dp[j as usize] {
   |                ^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_emit.rs:36:16
   |
36 |             if temp[j as usize] {
   |                ^^^^^^^^^^^^^^^^ expected `bool`, found integer
error: aborting due to 2 previous errors
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_emit.rs:29:16
   |
29 |             if dp[j as usize] {
   |                ^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_emit.rs:36:16
   |
36 |             if temp[j as usize] {
   |                ^^^^^^^^^^^^^^^^ expected `bool`, found integer
error: aborting due to 2 previous errors
For more information about this error, try `rustc --explain E0308`.
```
