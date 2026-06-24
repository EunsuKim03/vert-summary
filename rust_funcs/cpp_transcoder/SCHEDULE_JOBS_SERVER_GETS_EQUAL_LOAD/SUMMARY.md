# cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD.rs`
- Emit source: `rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs:27:16
   |
21 | fn f_gold(a: [f32;2], b: [f32;2], n: f32) -> i32 {
   |                                              --- expected `i32` because of return type
...
27 |         return a[0] + b[0];
   |                ^^^^^^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs:50:20
   |
50 |             b[i] = b[i + 1] = 0.0;
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs:27:16
   |
21 | fn f_gold(a: [f32;2], b: [f32;2], n: f32) -> i32 {
   |                                              --- expected `i32` because of return type
...
27 |         return a[0] + b[0];
   |                ^^^^^^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs:50:20
   |
50 |             b[i] = b[i + 1] = 0.0;
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs:27:16
   |
21 | fn f_gold(a: [f32;2], b: [f32;2], n: f32) -> i32 {
   |                                              --- expected `i32` because of return type
...
27 |         return a[0] + b[0];
   |                ^^^^^^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs:50:20
   |
50 |             b[i] = b[i + 1] = 0.0;
```
