# cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING.rs`
- Emit source: `rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/O0.ll`
- Message:

```text
warning: value assigned to `index` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.rs:29:13
   |
29 |             index += 1;
   |             ^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/O1.ll`
- Message:

```text
warning: value assigned to `index` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.rs:29:13
   |
29 |             index += 1;
   |             ^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/O2.ll`
- Message:

```text
warning: value assigned to `index` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING/LEXICOGRAPHICAL_CONCATENATION_SUBSTRINGS_STRING_emit.rs:29:13
   |
29 |             index += 1;
   |             ^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
