# cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999.rs`
- Emit source: `rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_DIVISIBILITY_LARGE_NUMBER_999, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0369]: cannot subtract `char` from `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_emit.rs:37:47
   |
37 |         group += (num.chars().nth(i).unwrap() - '0') as f32 * 100.0;
   |                   --------------------------- ^ --- char
   |                   |
   |                   char
error[E0369]: cannot subtract `char` from `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_emit.rs:38:51
   |
38 |         group += (num.chars().nth(i + 1).unwrap() - '0') as f32 * 10.0;
   |                   ------------------------------- ^ --- char
```

### O1

- Status: failed
- Message:

```text
error[E0369]: cannot subtract `char` from `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_emit.rs:37:47
   |
37 |         group += (num.chars().nth(i).unwrap() - '0') as f32 * 100.0;
   |                   --------------------------- ^ --- char
   |                   |
   |                   char
error[E0369]: cannot subtract `char` from `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_emit.rs:38:51
   |
38 |         group += (num.chars().nth(i + 1).unwrap() - '0') as f32 * 10.0;
   |                   ------------------------------- ^ --- char
```

### O2

- Status: failed
- Message:

```text
error[E0369]: cannot subtract `char` from `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_emit.rs:37:47
   |
37 |         group += (num.chars().nth(i).unwrap() - '0') as f32 * 100.0;
   |                   --------------------------- ^ --- char
   |                   |
   |                   char
error[E0369]: cannot subtract `char` from `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_emit.rs:38:51
   |
38 |         group += (num.chars().nth(i + 1).unwrap() - '0') as f32 * 10.0;
   |                   ------------------------------- ^ --- char
```
