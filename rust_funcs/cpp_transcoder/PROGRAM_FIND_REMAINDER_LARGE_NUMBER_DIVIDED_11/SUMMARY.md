# cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11.rs`
- Emit source: `rust_funcs/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11, compile=1, bolero=1, bounded_kani=1, full_kani=1`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/O0.ll`
- Message:

```text
warning: value assigned to `num` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_emit.rs:24:19
   |
24 |     let mut num = 0;
   |                   ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/O1.ll`
- Message:

```text
warning: value assigned to `num` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_emit.rs:24:19
   |
24 |     let mut num = 0;
   |                   ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/O2.ll`
- Message:

```text
warning: value assigned to `num` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11/PROGRAM_FIND_REMAINDER_LARGE_NUMBER_DIVIDED_11_emit.rs:24:19
   |
24 |     let mut num = 0;
   |                   ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
