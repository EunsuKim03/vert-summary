# cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit.rs:26:16
    |
 26 |         if arr[i] != arr[i + 1] {
    |                ^ slice indices are of type `usize` or ranges of `usize`
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
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit.rs:26:16
    |
 26 |         if arr[i] != arr[i + 1] {
    |                ^ slice indices are of type `usize` or ranges of `usize`
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
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit.rs:26:16
    |
 26 |         if arr[i] != arr[i + 1] {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```
