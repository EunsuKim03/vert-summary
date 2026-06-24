# cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_emit.rs:22:37
     |
  22 |     let mut profit = vec![vec![0.0; n + 1]; k + 1];
     |                           ----------^^^^^-
     |                           |         |
     |                           |         expected `usize`, found `u32`
     |                           arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_emit.rs:22:37
     |
  22 |     let mut profit = vec![vec![0.0; n + 1]; k + 1];
     |                           ----------^^^^^-
     |                           |         |
     |                           |         expected `usize`, found `u32`
     |                           arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_emit.rs:22:37
     |
  22 |     let mut profit = vec![vec![0.0; n + 1]; k + 1];
     |                           ----------^^^^^-
     |                           |         |
     |                           |         expected `usize`, found `u32`
     |                           arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```
