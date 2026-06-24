# c_crown/0009_url

- Kind: crate-copy
- Status: failed
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0009_url/url/src/decode.rs`
- Emit source: `rust_funcs/c_crown/0009_url/0009_url_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0009_url/url`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0106]: missing lifetime specifier
  --> /root/es/vert/vert/rust_funcs/c_crown/0009_url/0009_url_emit.rs:31:58
   |
31 | fn get_part(url: &str, format: &str, l: usize) -> Option<&str> {
   |                  ----          ----                      ^ expected named lifetime parameter
   |
   = help: this function's return type contains a borrowed value, but the signature does not say whether it is borrowed from `url` or `format`
help: consider introducing a named lifetime parameter
   |
31 | fn get_part<'a>(url: &'a str, format: &'a str, l: usize) -> Option<&'a str> {
   |            ++++       ++               ++                           ++
error[E0425]: cannot find function `url_get_path` in this scope
```

### O1

- Status: failed
- Message:

```text
error[E0106]: missing lifetime specifier
  --> /root/es/vert/vert/rust_funcs/c_crown/0009_url/0009_url_emit.rs:31:58
   |
31 | fn get_part(url: &str, format: &str, l: usize) -> Option<&str> {
   |                  ----          ----                      ^ expected named lifetime parameter
   |
   = help: this function's return type contains a borrowed value, but the signature does not say whether it is borrowed from `url` or `format`
help: consider introducing a named lifetime parameter
   |
31 | fn get_part<'a>(url: &'a str, format: &'a str, l: usize) -> Option<&'a str> {
   |            ++++       ++               ++                           ++
error[E0425]: cannot find function `url_get_path` in this scope
```

### O2

- Status: failed
- Message:

```text
error[E0106]: missing lifetime specifier
  --> /root/es/vert/vert/rust_funcs/c_crown/0009_url/0009_url_emit.rs:31:58
   |
31 | fn get_part(url: &str, format: &str, l: usize) -> Option<&str> {
   |                  ----          ----                      ^ expected named lifetime parameter
   |
   = help: this function's return type contains a borrowed value, but the signature does not say whether it is borrowed from `url` or `format`
help: consider introducing a named lifetime parameter
   |
31 | fn get_part<'a>(url: &'a str, format: &'a str, l: usize) -> Option<&'a str> {
   |            ++++       ++               ++                           ++
error[E0425]: cannot find function `url_get_path` in this scope
```
