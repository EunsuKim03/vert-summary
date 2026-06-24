# cpp_transcoder/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `s1:i32 [char]`; repaired malformed array parameter `s2:i32 [char]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the type `[char]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1_emit.rs:23:7
    |
 23 |    s2[index] = s1[index];
    |       ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[char]>` is not implemented for `u32`
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
error[E0277]: the type `[char]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1_emit.rs:23:7
    |
 23 |    s2[index] = s1[index];
    |       ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[char]>` is not implemented for `u32`
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
error[E0277]: the type `[char]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1_emit.rs:23:7
    |
 23 |    s2[index] = s1[index];
    |       ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[char]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```
