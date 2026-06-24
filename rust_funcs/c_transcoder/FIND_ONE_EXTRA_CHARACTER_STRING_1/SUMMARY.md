# c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1.rs`
- Emit source: `rust_funcs/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: yes
- CSV rows:
  - `FIND_ONE_EXTRA_CHARACTER_STRING_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`
  - `FIND_ONE_EXTRA_CHARACTER_STRING_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/O0.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_emit.rs:29:1
   |
29 | ((res as u8) as char)
   | ^                   ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
29 - ((res as u8) as char)
29 + (res as u8) as char
   |
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/O1.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_emit.rs:29:1
   |
29 | ((res as u8) as char)
   | ^                   ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
29 - ((res as u8) as char)
29 + (res as u8) as char
   |
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/O2.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_emit.rs:29:1
   |
29 | ((res as u8) as char)
   | ^                   ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
29 - ((res as u8) as char)
29 + (res as u8) as char
   |
```
