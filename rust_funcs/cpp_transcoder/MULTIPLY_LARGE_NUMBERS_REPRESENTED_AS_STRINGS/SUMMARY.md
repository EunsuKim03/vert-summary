# cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS.rs`
- Emit source: `rust_funcs/cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS_emit.rs:32:23
    |
 32 |         let n1 = num1[i] as i32 - '0' as i32;
    |                       ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
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
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS_emit.rs:32:23
    |
 32 |         let n1 = num1[i] as i32 - '0' as i32;
    |                       ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
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
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS_emit.rs:32:23
    |
 32 |         let n1 = num1[i] as i32 - '0' as i32;
    |                       ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```
