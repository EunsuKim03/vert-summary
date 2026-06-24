# c_crown/0007_libcsv_get_opts

- Kind: crate-copy
- Status: failed
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0007_libcsv_get_opts/libcsv_get_opts/src/csvinfo.rs`
- Emit source: `rust_funcs/c_crown/0007_libcsv_get_opts/0007_libcsv_get_opts_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0007_libcsv_get_opts/libcsv_get_opts`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0599]: no method named `is_null` found for reference `&CsvParser` in the current scope
  --> /root/es/vert/vert/rust_funcs/c_crown/0007_libcsv_get_opts/0007_libcsv_get_opts_emit.rs:30:15
   |
30 |     if parser.is_null() {
   |               ^^^^^^^ method not found in `&CsvParser`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_crown/0007_libcsv_get_opts/0007_libcsv_get_opts_emit.rs:33:5
   |
29 | fn csv_get_opts(parser: &CsvParser) -> i32 {
   |                                        --- expected `i32` because of return type
...
33 |     parser.options
```

### O1

- Status: failed
- Message:

```text
error[E0599]: no method named `is_null` found for reference `&CsvParser` in the current scope
  --> /root/es/vert/vert/rust_funcs/c_crown/0007_libcsv_get_opts/0007_libcsv_get_opts_emit.rs:30:15
   |
30 |     if parser.is_null() {
   |               ^^^^^^^ method not found in `&CsvParser`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_crown/0007_libcsv_get_opts/0007_libcsv_get_opts_emit.rs:33:5
   |
29 | fn csv_get_opts(parser: &CsvParser) -> i32 {
   |                                        --- expected `i32` because of return type
...
33 |     parser.options
```

### O2

- Status: failed
- Message:

```text
error[E0599]: no method named `is_null` found for reference `&CsvParser` in the current scope
  --> /root/es/vert/vert/rust_funcs/c_crown/0007_libcsv_get_opts/0007_libcsv_get_opts_emit.rs:30:15
   |
30 |     if parser.is_null() {
   |               ^^^^^^^ method not found in `&CsvParser`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_crown/0007_libcsv_get_opts/0007_libcsv_get_opts_emit.rs:33:5
   |
29 | fn csv_get_opts(parser: &CsvParser) -> i32 {
   |                                        --- expected `i32` because of return type
...
33 |     parser.options
```
