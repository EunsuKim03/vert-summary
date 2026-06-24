# cpp_transcoder/PROGRAM_CHECK_ISBN

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN.rs`
- Emit source: `rust_funcs/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `PROGRAM_CHECK_ISBN, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the type `str` cannot be indexed by `{integer}`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN_emit.rs:27:26
    |
 27 |         let digit = isbn[i] as i32 - '0' as i32;
    |                          ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `{integer}`
    = note: you can use `.chars().nth()` or `.bytes().nth()`
            for more information, see chapter 8 in The Book: <https://doc.rust-lang.org/book/ch08-02-strings.html#indexing-into-strings>
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
```

### O1

- Status: failed
- Message:

```text
error[E0277]: the type `str` cannot be indexed by `{integer}`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN_emit.rs:27:26
    |
 27 |         let digit = isbn[i] as i32 - '0' as i32;
    |                          ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `{integer}`
    = note: you can use `.chars().nth()` or `.bytes().nth()`
            for more information, see chapter 8 in The Book: <https://doc.rust-lang.org/book/ch08-02-strings.html#indexing-into-strings>
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
```

### O2

- Status: failed
- Message:

```text
error[E0277]: the type `str` cannot be indexed by `{integer}`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN_emit.rs:27:26
    |
 27 |         let digit = isbn[i] as i32 - '0' as i32;
    |                          ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `{integer}`
    = note: you can use `.chars().nth()` or `.bytes().nth()`
            for more information, see chapter 8 in The Book: <https://doc.rust-lang.org/book/ch08-02-strings.html#indexing-into-strings>
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
```
