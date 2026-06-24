# c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1.rs`
- Emit source: `rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:50
   |
35 | ...   subset[i as usize][j as usize] = subset[i as usize - 1][j as usize] || subset[i as usize - 1][(j - set[i as usize - 1]) as usize];
   |                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:88
   |
35 | ...e - 1][j as usize] || subset[i as usize - 1][(j - set[i as usize - 1]) as usize];
   |                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:50
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:50
   |
35 | ...   subset[i as usize][j as usize] = subset[i as usize - 1][j as usize] || subset[i as usize - 1][(j - set[i as usize - 1]) as usize];
   |                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:88
   |
35 | ...e - 1][j as usize] || subset[i as usize - 1][(j - set[i as usize - 1]) as usize];
   |                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:50
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:50
   |
35 | ...   subset[i as usize][j as usize] = subset[i as usize - 1][j as usize] || subset[i as usize - 1][(j - set[i as usize - 1]) as usize];
   |                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:88
   |
35 | ...e - 1][j as usize] || subset[i as usize - 1][(j - set[i as usize - 1]) as usize];
   |                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:50
```
