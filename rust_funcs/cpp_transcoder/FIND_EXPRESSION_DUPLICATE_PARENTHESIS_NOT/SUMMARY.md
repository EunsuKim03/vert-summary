# cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; removed trailing extra `)` after function body; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT.rs`
- Emit source: `rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0599]: no method named `pop` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:26:29
   |
26 |             let top = stack.pop().unwrap();
   |                             ^^^ method not found in `VecDeque<char>`
error[E0599]: no method named `pop` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:30:29
   |
30 |                 top = stack.pop().unwrap();
   |                             ^^^ method not found in `VecDeque<char>`
error[E0599]: no method named `push` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:36:19
```

### O1

- Status: failed
- Message:

```text
error[E0599]: no method named `pop` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:26:29
   |
26 |             let top = stack.pop().unwrap();
   |                             ^^^ method not found in `VecDeque<char>`
error[E0599]: no method named `pop` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:30:29
   |
30 |                 top = stack.pop().unwrap();
   |                             ^^^ method not found in `VecDeque<char>`
error[E0599]: no method named `push` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:36:19
```

### O2

- Status: failed
- Message:

```text
error[E0599]: no method named `pop` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:26:29
   |
26 |             let top = stack.pop().unwrap();
   |                             ^^^ method not found in `VecDeque<char>`
error[E0599]: no method named `pop` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:30:29
   |
30 |                 top = stack.pop().unwrap();
   |                             ^^^ method not found in `VecDeque<char>`
error[E0599]: no method named `push` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:36:19
```
