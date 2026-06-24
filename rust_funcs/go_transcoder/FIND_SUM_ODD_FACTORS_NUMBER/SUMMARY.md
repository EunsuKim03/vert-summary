# go_transcoder/FIND_SUM_ODD_FACTORS_NUMBER

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/FIND_SUM_ODD_FACTORS_NUMBER.rs`
- Emit source: `rust_funcs/go_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/FIND_SUM_ODD_FACTORS_NUMBER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_SUM_ODD_FACTORS_NUMBER, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/go_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/O0.ll`
- Message:

```text
warning: value assigned to `count` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/FIND_SUM_ODD_FACTORS_NUMBER_emit.rs:33:13
   |
33 |             count += 1;
   |             ^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/go_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/O1.ll`
- Message:

```text
warning: value assigned to `count` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/FIND_SUM_ODD_FACTORS_NUMBER_emit.rs:33:13
   |
33 |             count += 1;
   |             ^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/go_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/O2.ll`
- Message:

```text
warning: value assigned to `count` is never read
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/FIND_SUM_ODD_FACTORS_NUMBER_emit.rs:33:13
   |
33 |             count += 1;
   |             ^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
