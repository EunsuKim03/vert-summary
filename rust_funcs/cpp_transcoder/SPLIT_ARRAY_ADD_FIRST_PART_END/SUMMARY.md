# cpp_transcoder/SPLIT_ARRAY_ADD_FIRST_PART_END

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SPLIT_ARRAY_ADD_FIRST_PART_END/SPLIT_ARRAY_ADD_FIRST_PART_END.rs`
- Emit source: `rust_funcs/cpp_transcoder/SPLIT_ARRAY_ADD_FIRST_PART_END/SPLIT_ARRAY_ADD_FIRST_PART_END_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SPLIT_ARRAY_ADD_FIRST_PART_END, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the type `[f32]` cannot be indexed by `std::ops::Range<u32>`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SPLIT_ARRAY_ADD_FIRST_PART_END/SPLIT_ARRAY_ADD_FIRST_PART_END_emit.rs:24:13
    |
 24 |         arr[0..n-1].rotate_left(1);
    |             ^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `std::ops::Range<u32>`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:362:1
    |
362 | unsafe impl<T> const SliceIndex<[T]> for ops::Range<usize> {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `std::ops::Range<usize>` implements `SliceIndex<[T]>`
```

### O1

- Status: failed
- Message:

```text
error[E0277]: the type `[f32]` cannot be indexed by `std::ops::Range<u32>`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SPLIT_ARRAY_ADD_FIRST_PART_END/SPLIT_ARRAY_ADD_FIRST_PART_END_emit.rs:24:13
    |
 24 |         arr[0..n-1].rotate_left(1);
    |             ^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `std::ops::Range<u32>`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:362:1
    |
362 | unsafe impl<T> const SliceIndex<[T]> for ops::Range<usize> {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `std::ops::Range<usize>` implements `SliceIndex<[T]>`
```

### O2

- Status: failed
- Message:

```text
error[E0277]: the type `[f32]` cannot be indexed by `std::ops::Range<u32>`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SPLIT_ARRAY_ADD_FIRST_PART_END/SPLIT_ARRAY_ADD_FIRST_PART_END_emit.rs:24:13
    |
 24 |         arr[0..n-1].rotate_left(1);
    |             ^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `std::ops::Range<u32>`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:362:1
    |
362 | unsafe impl<T> const SliceIndex<[T]> for ops::Range<usize> {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `std::ops::Range<usize>` implements `SliceIndex<[T]>`
```
