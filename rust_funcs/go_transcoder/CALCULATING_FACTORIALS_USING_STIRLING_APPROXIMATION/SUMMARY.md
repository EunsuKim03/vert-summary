# go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION.rs`
- Emit source: `rust_funcs/go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/O0.ll`
- Message:

```text
warning: value assigned to `z` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_emit.rs:26:16
   |
26 |     let mut z =0.0;
   |                ^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/O1.ll`
- Message:

```text
warning: value assigned to `z` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_emit.rs:26:16
   |
26 |     let mut z =0.0;
   |                ^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/O2.ll`
- Message:

```text
warning: value assigned to `z` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION/CALCULATING_FACTORIALS_USING_STIRLING_APPROXIMATION_emit.rs:26:16
   |
26 |     let mut z =0.0;
   |                ^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
