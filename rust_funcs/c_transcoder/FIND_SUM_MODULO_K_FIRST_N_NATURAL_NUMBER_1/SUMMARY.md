# c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1.rs`
- Emit source: `rust_funcs/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1/O0.ll`
- Message:

```text
warning: value assigned to `ans` is never read
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1_emit.rs:22:19
   |
22 |     let mut ans = 0;
   |                   ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1/O1.ll`
- Message:

```text
warning: value assigned to `ans` is never read
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1_emit.rs:22:19
   |
22 |     let mut ans = 0;
   |                   ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1/O2.ll`
- Message:

```text
warning: value assigned to `ans` is never read
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1/FIND_SUM_MODULO_K_FIRST_N_NATURAL_NUMBER_1_emit.rs:22:19
   |
22 |     let mut ans = 0;
   |                   ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
