# c_transcoder/FREQUENT_ELEMENT_ARRAY

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/FREQUENT_ELEMENT_ARRAY/FREQUENT_ELEMENT_ARRAY.rs`
- Emit source: `rust_funcs/c_transcoder/FREQUENT_ELEMENT_ARRAY/FREQUENT_ELEMENT_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FREQUENT_ELEMENT_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/FREQUENT_ELEMENT_ARRAY/O0.ll`
- Message:

```text
warning: value assigned to `max_count` is never read
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FREQUENT_ELEMENT_ARRAY/FREQUENT_ELEMENT_ARRAY_emit.rs:40:9
   |
40 |         max_count = curr_count;
   |         ^^^^^^^^^^^^^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/FREQUENT_ELEMENT_ARRAY/O1.ll`
- Message:

```text
warning: value assigned to `max_count` is never read
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FREQUENT_ELEMENT_ARRAY/FREQUENT_ELEMENT_ARRAY_emit.rs:40:9
   |
40 |         max_count = curr_count;
   |         ^^^^^^^^^^^^^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/FREQUENT_ELEMENT_ARRAY/O2.ll`
- Message:

```text
warning: value assigned to `max_count` is never read
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FREQUENT_ELEMENT_ARRAY/FREQUENT_ELEMENT_ARRAY_emit.rs:40:9
   |
40 |         max_count = curr_count;
   |         ^^^^^^^^^^^^^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
