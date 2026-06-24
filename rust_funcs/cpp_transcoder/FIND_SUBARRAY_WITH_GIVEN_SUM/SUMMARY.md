# cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM/FIND_SUBARRAY_WITH_GIVEN_SUM.rs`
- Emit source: `rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM/FIND_SUBARRAY_WITH_GIVEN_SUM_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_SUBARRAY_WITH_GIVEN_SUM, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM/O0.ll`
- Message:

```text
warning: value assigned to `curr_sum` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM/FIND_SUBARRAY_WITH_GIVEN_SUM_emit.rs:24:24
   |
24 |     let mut curr_sum = arr[0 as usize];
   |                        ^^^^^^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM/O1.ll`
- Message:

```text
warning: value assigned to `curr_sum` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM/FIND_SUBARRAY_WITH_GIVEN_SUM_emit.rs:24:24
   |
24 |     let mut curr_sum = arr[0 as usize];
   |                        ^^^^^^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM/O2.ll`
- Message:

```text
warning: value assigned to `curr_sum` is never read
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM/FIND_SUBARRAY_WITH_GIVEN_SUM_emit.rs:24:24
   |
24 |     let mut curr_sum = arr[0 as usize];
   |                        ^^^^^^^^^^^^^^^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
