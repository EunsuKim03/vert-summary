# cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION.rs`
- Emit source: `rust_funcs/cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_emit.rs:25:24
   |
25 |     let mut len = [[0; n]; 2];
   |                        ^ non-constant value
   |
help: consider using `const` instead of `let`
   |
23 -     let n = y.len();
23 +     const n: /* Type */ = y.len();
   |
error[E0277]: the type `str` cannot be indexed by `usize`
```

### O1

- Status: failed
- Message:

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_emit.rs:25:24
   |
25 |     let mut len = [[0; n]; 2];
   |                        ^ non-constant value
   |
help: consider using `const` instead of `let`
   |
23 -     let n = y.len();
23 +     const n: /* Type */ = y.len();
   |
error[E0277]: the type `str` cannot be indexed by `usize`
```

### O2

- Status: failed
- Message:

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_emit.rs:25:24
   |
25 |     let mut len = [[0; n]; 2];
   |                        ^ non-constant value
   |
help: consider using `const` instead of `let`
   |
23 -     let n = y.len();
23 +     const n: /* Type */ = y.len();
   |
error[E0277]: the type `str` cannot be indexed by `usize`
```
