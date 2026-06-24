# c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S.rs`
- Emit source: `rust_funcs/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S, compile=1, bolero=1, bounded_kani=1, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/O0.ll`
- Message:

```text
warning: unnecessary parentheses around method argument
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_emit.rs:26:81
   |
26 |             dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1].max((A[j as usize - 1] * B[i as usize - 1]));
   |                                                                                 ^                                     ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -             dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1].max((A[j as usize - 1] * B[i as usize - 1]));
26 +             dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1].max(A[j as usize - 1] * B[i as usize - 1]);
   |
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/O1.ll`
- Message:

```text
warning: unnecessary parentheses around method argument
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_emit.rs:26:81
   |
26 |             dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1].max((A[j as usize - 1] * B[i as usize - 1]));
   |                                                                                 ^                                     ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -             dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1].max((A[j as usize - 1] * B[i as usize - 1]));
26 +             dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1].max(A[j as usize - 1] * B[i as usize - 1]);
   |
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/O2.ll`
- Message:

```text
warning: unnecessary parentheses around method argument
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_emit.rs:26:81
   |
26 |             dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1].max((A[j as usize - 1] * B[i as usize - 1]));
   |                                                                                 ^                                     ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -             dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1].max((A[j as usize - 1] * B[i as usize - 1]));
26 +             dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1].max(A[j as usize - 1] * B[i as usize - 1]);
   |
```
