# go_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM.rs`
- Emit source: `rust_funcs/go_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM_emit.rs:32:5
   |
21 | fn f_gold(a: u32, b: u32) -> u32 {
   |                              --- expected `u32` because of return type
...
32 |     res
   |     ^^^ expected `u32`, found `usize`
   |
help: you can convert a `usize` to a `u32` and panic if the converted value doesn't fit
   |
32 |     res.try_into().unwrap()
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM_emit.rs:32:5
   |
21 | fn f_gold(a: u32, b: u32) -> u32 {
   |                              --- expected `u32` because of return type
...
32 |     res
   |     ^^^ expected `u32`, found `usize`
   |
help: you can convert a `usize` to a `u32` and panic if the converted value doesn't fit
   |
32 |     res.try_into().unwrap()
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM_emit.rs:32:5
   |
21 | fn f_gold(a: u32, b: u32) -> u32 {
   |                              --- expected `u32` because of return type
...
32 |     res
   |     ^^^ expected `u32`, found `usize`
   |
help: you can convert a `usize` to a `u32` and panic if the converted value doesn't fit
   |
32 |     res.try_into().unwrap()
```
