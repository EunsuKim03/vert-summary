# cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED.rs`
- Emit source: `rust_funcs/cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_emit.rs:25:12
   |
25 |     if m > n {
   |        -   ^ expected `usize`, found `u32`
   |        |
   |        expected because this is `usize`
   |
help: you can convert a `u32` to a `usize` and panic if the converted value doesn't fit
   |
25 |     if m > n.try_into().unwrap() {
   |             ++++++++++++++++++++
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_emit.rs:25:12
   |
25 |     if m > n {
   |        -   ^ expected `usize`, found `u32`
   |        |
   |        expected because this is `usize`
   |
help: you can convert a `u32` to a `usize` and panic if the converted value doesn't fit
   |
25 |     if m > n.try_into().unwrap() {
   |             ++++++++++++++++++++
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_emit.rs:25:12
   |
25 |     if m > n {
   |        -   ^ expected `usize`, found `u32`
   |        |
   |        expected because this is `usize`
   |
help: you can convert a `u32` to a `usize` and panic if the converted value doesn't fit
   |
25 |     if m > n.try_into().unwrap() {
   |             ++++++++++++++++++++
```
