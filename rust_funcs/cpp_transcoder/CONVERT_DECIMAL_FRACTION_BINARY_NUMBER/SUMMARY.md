# cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER.rs`
- Emit source: `rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `CONVERT_DECIMAL_FRACTION_BINARY_NUMBER, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0573]: expected type, found module `string`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_emit.rs:22:37
    |
 22 | fn f_gold(num: f32, k_prec: i32) -> string {
    |                                     ^^^^^^ help: a struct with a similar name exists (notice the capitalization): `String`
    |
   ::: /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs:353:1
    |
353 | pub struct String {
    | ----------------- similarly named struct `String` defined here
error[E0277]: cannot add `char` to `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_emit.rs:29:26
```

### O1

- Status: failed
- Message:

```text
error[E0573]: expected type, found module `string`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_emit.rs:22:37
    |
 22 | fn f_gold(num: f32, k_prec: i32) -> string {
    |                                     ^^^^^^ help: a struct with a similar name exists (notice the capitalization): `String`
    |
   ::: /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs:353:1
    |
353 | pub struct String {
    | ----------------- similarly named struct `String` defined here
error[E0277]: cannot add `char` to `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_emit.rs:29:26
```

### O2

- Status: failed
- Message:

```text
error[E0573]: expected type, found module `string`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_emit.rs:22:37
    |
 22 | fn f_gold(num: f32, k_prec: i32) -> string {
    |                                     ^^^^^^ help: a struct with a similar name exists (notice the capitalization): `String`
    |
   ::: /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs:353:1
    |
353 | pub struct String {
    | ----------------- similarly named struct `String` defined here
error[E0277]: cannot add `char` to `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_emit.rs:29:26
```
