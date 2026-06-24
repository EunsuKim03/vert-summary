# c_crown/0011_brotli_filesize

- Kind: crate-copy
- Status: failed
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible; added std::io::Seek import
- Source: `rust_funcs/c_crown/0011_brotli_filesize/brotli_filesize/src/binn.rs`
- Emit source: `rust_funcs/c_crown/0011_brotli_filesize/0011_brotli_filesize_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0011_brotli_filesize/brotli_filesize`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_crown/0011_brotli_filesize/0011_brotli_filesize_emit.rs:18:5
   |
14 | fn file_size(path: &str) -> i64 {
   |                             --- expected `i64` because of return type
...
18 |     size
   |     ^^^^ expected `i64`, found `u64`
   |
help: you can convert a `u64` to an `i64` and panic if the converted value doesn't fit
   |
18 |     size.try_into().unwrap()
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_crown/0011_brotli_filesize/0011_brotli_filesize_emit.rs:18:5
   |
14 | fn file_size(path: &str) -> i64 {
   |                             --- expected `i64` because of return type
...
18 |     size
   |     ^^^^ expected `i64`, found `u64`
   |
help: you can convert a `u64` to an `i64` and panic if the converted value doesn't fit
   |
18 |     size.try_into().unwrap()
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_crown/0011_brotli_filesize/0011_brotli_filesize_emit.rs:18:5
   |
14 | fn file_size(path: &str) -> i64 {
   |                             --- expected `i64` because of return type
...
18 |     size
   |     ^^^^ expected `i64`, found `u64`
   |
help: you can convert a `u64` to an `i64` and panic if the converted value doesn't fit
   |
18 |     size.try_into().unwrap()
```
