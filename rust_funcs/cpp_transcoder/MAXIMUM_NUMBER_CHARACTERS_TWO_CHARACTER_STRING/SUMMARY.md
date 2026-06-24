# cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING.rs`
- Emit source: `rust_funcs/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0423]: expected value, found builtin type `str`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_emit.rs:21:9
   |
21 | let n = str.len();
   |         ^^^
   |
help: you might have meant to use `:` for type annotation
   |
21 - let n = str.len();
21 + let n: str.len();
   |
error[E0423]: expected value, found builtin type `str`
```

### O1

- Status: failed
- Message:

```text
error[E0423]: expected value, found builtin type `str`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_emit.rs:21:9
   |
21 | let n = str.len();
   |         ^^^
   |
help: you might have meant to use `:` for type annotation
   |
21 - let n = str.len();
21 + let n: str.len();
   |
error[E0423]: expected value, found builtin type `str`
```

### O2

- Status: failed
- Message:

```text
error[E0423]: expected value, found builtin type `str`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_emit.rs:21:9
   |
21 | let n = str.len();
   |         ^^^
   |
help: you might have meant to use `:` for type annotation
   |
21 - let n = str.len();
21 + let n: str.len();
   |
error[E0423]: expected value, found builtin type `str`
```
