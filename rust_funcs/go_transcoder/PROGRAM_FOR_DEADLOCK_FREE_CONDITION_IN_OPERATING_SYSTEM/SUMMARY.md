# go_transcoder/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM.rs`
- Emit source: `rust_funcs/go_transcoder/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/go_transcoder/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM/O0.ll`
- Message:

```text
warning: value assigned to `min_resources` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM_emit.rs:22:29
   |
22 |     let mut min_resources = 0;
   |                             ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/go_transcoder/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM/O1.ll`
- Message:

```text
warning: value assigned to `min_resources` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM_emit.rs:22:29
   |
22 |     let mut min_resources = 0;
   |                             ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/go_transcoder/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM/O2.ll`
- Message:

```text
warning: value assigned to `min_resources` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM/PROGRAM_FOR_DEADLOCK_FREE_CONDITION_IN_OPERATING_SYSTEM_emit.rs:22:29
   |
22 |     let mut min_resources = 0;
   |                             ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
