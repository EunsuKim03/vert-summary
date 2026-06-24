# cpp_transcoder/PAPER_CUT_MINIMUM_NUMBER_SQUARES

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PAPER_CUT_MINIMUM_NUMBER_SQUARES/PAPER_CUT_MINIMUM_NUMBER_SQUARES.rs`
- Emit source: `rust_funcs/cpp_transcoder/PAPER_CUT_MINIMUM_NUMBER_SQUARES/PAPER_CUT_MINIMUM_NUMBER_SQUARES_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PAPER_CUT_MINIMUM_NUMBER_SQUARES, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PAPER_CUT_MINIMUM_NUMBER_SQUARES/O0.ll`
- Message:

```text
warning: value assigned to `rem` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PAPER_CUT_MINIMUM_NUMBER_SQUARES/PAPER_CUT_MINIMUM_NUMBER_SQUARES_emit.rs:25:19
   |
25 |     let mut rem = 0;
   |                   ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PAPER_CUT_MINIMUM_NUMBER_SQUARES/O1.ll`
- Message:

```text
warning: value assigned to `rem` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PAPER_CUT_MINIMUM_NUMBER_SQUARES/PAPER_CUT_MINIMUM_NUMBER_SQUARES_emit.rs:25:19
   |
25 |     let mut rem = 0;
   |                   ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PAPER_CUT_MINIMUM_NUMBER_SQUARES/O2.ll`
- Message:

```text
warning: value assigned to `rem` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PAPER_CUT_MINIMUM_NUMBER_SQUARES/PAPER_CUT_MINIMUM_NUMBER_SQUARES_emit.rs:25:19
   |
25 |     let mut rem = 0;
   |                   ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
