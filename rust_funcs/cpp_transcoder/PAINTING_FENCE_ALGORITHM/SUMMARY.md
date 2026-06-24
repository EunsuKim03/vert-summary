# cpp_transcoder/PAINTING_FENCE_ALGORITHM

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM.rs`
- Emit source: `rust_funcs/cpp_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PAINTING_FENCE_ALGORITHM, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_emit.rs:32:5
   |
23 | fn f_gold(n: i32, k: i32) -> i32 {
   |                              --- expected `i32` because of return type
...
32 |     total
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
32 |     total.try_into().unwrap()
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_emit.rs:32:5
   |
23 | fn f_gold(n: i32, k: i32) -> i32 {
   |                              --- expected `i32` because of return type
...
32 |     total
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
32 |     total.try_into().unwrap()
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_emit.rs:32:5
   |
23 | fn f_gold(n: i32, k: i32) -> i32 {
   |                              --- expected `i32` because of return type
...
32 |     total
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
32 |     total.try_into().unwrap()
```
