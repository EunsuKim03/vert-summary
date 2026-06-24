# cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE.rs`
- Emit source: `rust_funcs/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `LONGEST_REPEATING_SUBSEQUENCE, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_emit.rs:26:20
    |
 26 |             if str[i - 1] == str[j - 1] && i != j {
    |                    ^^^^^ string indices are ranges of `usize`
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
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_emit.rs:26:20
    |
 26 |             if str[i - 1] == str[j - 1] && i != j {
    |                    ^^^^^ string indices are ranges of `usize`
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
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_emit.rs:26:20
    |
 26 |             if str[i - 1] == str[j - 1] && i != j {
    |                    ^^^^^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```
