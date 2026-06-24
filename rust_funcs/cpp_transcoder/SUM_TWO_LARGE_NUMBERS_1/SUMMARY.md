# cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SUM_TWO_LARGE_NUMBERS_1, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0369]: cannot add `char` to `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_emit.rs:33:37
   |
33 |         str.push((sum % 10) as char + '0' as char);
   |                  ------------------ ^ ----------- char
   |                  |
   |                  char
error[E0369]: cannot add `char` to `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_emit.rs:38:37
   |
38 |         str.push((sum % 10) as char + '0' as char);
   |                  ------------------ ^ ----------- char
```

### O1

- Status: failed
- Message:

```text
error[E0369]: cannot add `char` to `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_emit.rs:33:37
   |
33 |         str.push((sum % 10) as char + '0' as char);
   |                  ------------------ ^ ----------- char
   |                  |
   |                  char
error[E0369]: cannot add `char` to `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_emit.rs:38:37
   |
38 |         str.push((sum % 10) as char + '0' as char);
   |                  ------------------ ^ ----------- char
```

### O2

- Status: failed
- Message:

```text
error[E0369]: cannot add `char` to `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_emit.rs:33:37
   |
33 |         str.push((sum % 10) as char + '0' as char);
   |                  ------------------ ^ ----------- char
   |                  |
   |                  char
error[E0369]: cannot add `char` to `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_emit.rs:38:37
   |
38 |         str.push((sum % 10) as char + '0' as char);
   |                  ------------------ ^ ----------- char
```
