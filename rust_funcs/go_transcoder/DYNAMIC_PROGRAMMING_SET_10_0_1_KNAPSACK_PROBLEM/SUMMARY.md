# go_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM.rs`
- Emit source: `rust_funcs/go_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_emit.rs:30:20
    |
 30 |         return val[n as u32 - 1] + f_gold(W - wt[n as u32 - 1], wt, val, n - 1).max(f_gold(W, wt, val, n - 1));
    |                    ^^^^^^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```

### O1

- Status: failed
- Message:

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_emit.rs:30:20
    |
 30 |         return val[n as u32 - 1] + f_gold(W - wt[n as u32 - 1], wt, val, n - 1).max(f_gold(W, wt, val, n - 1));
    |                    ^^^^^^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```

### O2

- Status: failed
- Message:

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_emit.rs:30:20
    |
 30 |         return val[n as u32 - 1] + f_gold(W - wt[n as u32 - 1], wt, val, n - 1).max(f_gold(W, wt, val, n - 1));
    |                    ^^^^^^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```
