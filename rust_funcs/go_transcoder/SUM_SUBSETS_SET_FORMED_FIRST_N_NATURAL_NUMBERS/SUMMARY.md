# go_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS.rs`
- Emit source: `rust_funcs/go_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS_emit.rs:26:5
   |
22 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
26 |     result as u64
   |     ^^^^^^^^^^^^^ expected `i32`, found `u64`
   |
help: you can convert a `u64` to an `i32` and panic if the converted value doesn't fit
   |
26 |     (result as u64).try_into().unwrap()
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS_emit.rs:26:5
   |
22 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
26 |     result as u64
   |     ^^^^^^^^^^^^^ expected `i32`, found `u64`
   |
help: you can convert a `u64` to an `i32` and panic if the converted value doesn't fit
   |
26 |     (result as u64).try_into().unwrap()
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS_emit.rs:26:5
   |
22 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
26 |     result as u64
   |     ^^^^^^^^^^^^^ expected `i32`, found `u64`
   |
help: you can convert a `u64` to an `i32` and panic if the converted value doesn't fit
   |
26 |     (result as u64).try_into().unwrap()
```
