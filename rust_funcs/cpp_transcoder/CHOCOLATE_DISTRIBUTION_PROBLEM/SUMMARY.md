# cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM.rs`
- Emit source: `rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHOCOLATE_DISTRIBUTION_PROBLEM, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:23:16
   |
21 | fn f_gold(arr: &mut [f32], n: u32, m: u32) -> i32 {
   |                                               --- expected `i32` because of return type
22 |     if m == 0 || n == 0 {
23 |         return 0.;
   |                ^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:33:24
    |
 33 |         let diff = arr[i+m-1] - arr[i];
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:23:16
   |
21 | fn f_gold(arr: &mut [f32], n: u32, m: u32) -> i32 {
   |                                               --- expected `i32` because of return type
22 |     if m == 0 || n == 0 {
23 |         return 0.;
   |                ^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:33:24
    |
 33 |         let diff = arr[i+m-1] - arr[i];
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:23:16
   |
21 | fn f_gold(arr: &mut [f32], n: u32, m: u32) -> i32 {
   |                                               --- expected `i32` because of return type
22 |     if m == 0 || n == 0 {
23 |         return 0.;
   |                ^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:33:24
    |
 33 |         let diff = arr[i+m-1] - arr[i];
```
