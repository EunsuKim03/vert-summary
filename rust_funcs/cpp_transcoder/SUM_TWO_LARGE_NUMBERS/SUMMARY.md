# cpp_transcoder/SUM_TWO_LARGE_NUMBERS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS.rs`
- Emit source: `rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SUM_TWO_LARGE_NUMBERS, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0599]: no method named `reverse` found for struct `String` in the current scope
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS_emit.rs:29:10
     |
  29 |     str1.reverse();
     |          ^^^^^^^
     |
help: there is a method `reserve` with a similar name, but with different arguments
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs:1205:5
     |
1205 |     pub fn reserve(&mut self, additional: usize) {
     |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
error[E0599]: no method named `reverse` found for struct `String` in the current scope
```

### O1

- Status: failed
- Message:

```text
error[E0599]: no method named `reverse` found for struct `String` in the current scope
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS_emit.rs:29:10
     |
  29 |     str1.reverse();
     |          ^^^^^^^
     |
help: there is a method `reserve` with a similar name, but with different arguments
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs:1205:5
     |
1205 |     pub fn reserve(&mut self, additional: usize) {
     |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
error[E0599]: no method named `reverse` found for struct `String` in the current scope
```

### O2

- Status: failed
- Message:

```text
error[E0599]: no method named `reverse` found for struct `String` in the current scope
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS_emit.rs:29:10
     |
  29 |     str1.reverse();
     |          ^^^^^^^
     |
help: there is a method `reserve` with a similar name, but with different arguments
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs:1205:5
     |
1205 |     pub fn reserve(&mut self, additional: usize) {
     |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
error[E0599]: no method named `reverse` found for struct `String` in the current scope
```
