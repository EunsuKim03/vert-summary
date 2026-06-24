# cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS.rs`
- Emit source: `rust_funcs/cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SUM_MANHATTAN_DISTANCES_PAIRS_POINTS, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_emit.rs:26:27
    |
 26 |              sum += min(x[i] - x[j], y[i] - y[j]).abs()
    |                           ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `i32`
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
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_emit.rs:26:27
    |
 26 |              sum += min(x[i] - x[j], y[i] - y[j]).abs()
    |                           ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `i32`
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
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_emit.rs:26:27
    |
 26 |              sum += min(x[i] - x[j], y[i] - y[j]).abs()
    |                           ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```
