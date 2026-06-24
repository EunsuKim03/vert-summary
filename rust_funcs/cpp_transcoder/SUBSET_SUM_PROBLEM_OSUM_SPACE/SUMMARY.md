# cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE.rs`
- Emit source: `rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SUBSET_SUM_PROBLEM_OSUM_SPACE, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:36
   |
30 |                 subset[i % 2][j] = subset[(i + 1) % 2][j - arr[i - 1] as usize] || subset[(i + 1) % 2][j];
   |                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:84
   |
30 |                 subset[i % 2][j] = subset[(i + 1) % 2][j - arr[i - 1] as usize] || subset[(i + 1) % 2][j];
   |                                                                                    ^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:36
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:36
   |
30 |                 subset[i % 2][j] = subset[(i + 1) % 2][j - arr[i - 1] as usize] || subset[(i + 1) % 2][j];
   |                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:84
   |
30 |                 subset[i % 2][j] = subset[(i + 1) % 2][j - arr[i - 1] as usize] || subset[(i + 1) % 2][j];
   |                                                                                    ^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:36
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:36
   |
30 |                 subset[i % 2][j] = subset[(i + 1) % 2][j - arr[i - 1] as usize] || subset[(i + 1) % 2][j];
   |                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:84
   |
30 |                 subset[i % 2][j] = subset[(i + 1) % 2][j - arr[i - 1] as usize] || subset[(i + 1) % 2][j];
   |                                                                                    ^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:36
```
