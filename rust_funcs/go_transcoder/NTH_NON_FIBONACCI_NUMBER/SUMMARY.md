# go_transcoder/NTH_NON_FIBONACCI_NUMBER

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/NTH_NON_FIBONACCI_NUMBER/NTH_NON_FIBONACCI_NUMBER.rs`
- Emit source: `rust_funcs/go_transcoder/NTH_NON_FIBONACCI_NUMBER/NTH_NON_FIBONACCI_NUMBER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `NTH_NON_FIBONACCI_NUMBER, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/go_transcoder/NTH_NON_FIBONACCI_NUMBER/O0.ll`
- Message:

```text
warning: value assigned to `prev_prev` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/NTH_NON_FIBONACCI_NUMBER/NTH_NON_FIBONACCI_NUMBER_emit.rs:24:27
   |
24 | let  mut prev_prev: f32 = 1.0;
   |                           ^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/go_transcoder/NTH_NON_FIBONACCI_NUMBER/O1.ll`
- Message:

```text
warning: value assigned to `prev_prev` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/NTH_NON_FIBONACCI_NUMBER/NTH_NON_FIBONACCI_NUMBER_emit.rs:24:27
   |
24 | let  mut prev_prev: f32 = 1.0;
   |                           ^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/go_transcoder/NTH_NON_FIBONACCI_NUMBER/O2.ll`
- Message:

```text
warning: value assigned to `prev_prev` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/NTH_NON_FIBONACCI_NUMBER/NTH_NON_FIBONACCI_NUMBER_emit.rs:24:27
   |
24 | let  mut prev_prev: f32 = 1.0;
   |                           ^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
