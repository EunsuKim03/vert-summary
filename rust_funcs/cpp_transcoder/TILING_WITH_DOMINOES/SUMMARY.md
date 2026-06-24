# cpp_transcoder/TILING_WITH_DOMINOES

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES.rs`
- Emit source: `rust_funcs/cpp_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `TILING_WITH_DOMINOES, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the type `[{integer}]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES_emit.rs:25:18
    |
 25 |         a.push(a[i - 2] + 2 * b[i - 1]);
    |                  ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[{integer}]>` is not implemented for `i32`
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
error[E0277]: the type `[{integer}]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES_emit.rs:25:18
    |
 25 |         a.push(a[i - 2] + 2 * b[i - 1]);
    |                  ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[{integer}]>` is not implemented for `i32`
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
error[E0277]: the type `[{integer}]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES_emit.rs:25:18
    |
 25 |         a.push(a[i - 2] + 2 * b[i - 1]);
    |                  ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[{integer}]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```
