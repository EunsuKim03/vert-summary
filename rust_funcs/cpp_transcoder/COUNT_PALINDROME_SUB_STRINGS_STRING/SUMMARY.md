# cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `mut str:i32 [char]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING.rs`
- Emit source: `rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `COUNT_PALINDROME_SUB_STRINGS_STRING, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:40:36
   |
40 |             if str[i] == str[j] && p[i + 1][j - 1] {
   |                ----------------    ^^^^^^^^^^^^^^^ expected `bool`, found integer
   |                |
   |                expected because this is `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:43:16
   |
43 |             if p[i][j] {
   |                ^^^^^^^ expected `bool`, found integer
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:40:36
   |
40 |             if str[i] == str[j] && p[i + 1][j - 1] {
   |                ----------------    ^^^^^^^^^^^^^^^ expected `bool`, found integer
   |                |
   |                expected because this is `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:43:16
   |
43 |             if p[i][j] {
   |                ^^^^^^^ expected `bool`, found integer
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:40:36
   |
40 |             if str[i] == str[j] && p[i + 1][j - 1] {
   |                ----------------    ^^^^^^^^^^^^^^^ expected `bool`, found integer
   |                |
   |                expected because this is `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:43:16
   |
43 |             if p[i][j] {
   |                ^^^^^^^ expected `bool`, found integer
```
