# cpp_transcoder/MIRROR_CHARACTERS_STRING

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING.rs`
- Emit source: `rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MIRROR_CHARACTERS_STRING, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING_emit.rs:25:17
   |
25 |     for i in n..l {
   |                 ^ expected `i32`, found `usize`
error[E0277]: the trait bound `i32: Pattern` is not satisfied
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING_emit.rs:26:21
    |
 26 |         str.replace(i, 1, &reverse_alphabet[(str.chars().nth(i).unwrap() as usize) - 'a' as usize]);
    |             ------- ^ the trait `FnMut(char)` is not implemented for `i32`
    |             |
    |             required by a bound introduced by this call
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING_emit.rs:25:17
   |
25 |     for i in n..l {
   |                 ^ expected `i32`, found `usize`
error[E0277]: the trait bound `i32: Pattern` is not satisfied
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING_emit.rs:26:21
    |
 26 |         str.replace(i, 1, &reverse_alphabet[(str.chars().nth(i).unwrap() as usize) - 'a' as usize]);
    |             ------- ^ the trait `FnMut(char)` is not implemented for `i32`
    |             |
    |             required by a bound introduced by this call
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING_emit.rs:25:17
   |
25 |     for i in n..l {
   |                 ^ expected `i32`, found `usize`
error[E0277]: the trait bound `i32: Pattern` is not satisfied
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING_emit.rs:26:21
    |
 26 |         str.replace(i, 1, &reverse_alphabet[(str.chars().nth(i).unwrap() as usize) - 'a' as usize]);
    |             ------- ^ the trait `FnMut(char)` is not implemented for `i32`
    |             |
    |             required by a bound introduced by this call
```
