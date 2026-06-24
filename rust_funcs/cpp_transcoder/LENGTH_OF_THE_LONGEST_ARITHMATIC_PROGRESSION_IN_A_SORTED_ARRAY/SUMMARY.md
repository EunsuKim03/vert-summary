# cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY.rs`
- Emit source: `rust_funcs/cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_emit.rs:25:16
   |
23 | fn f_gold(set: [f32;2], n: u32) -> i32 {
   |                                    --- expected `i32` because of return type
24 |     if n <= 2 {
25 |         return n;
   |                ^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
25 |         return n.try_into().unwrap();
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_emit.rs:25:16
   |
23 | fn f_gold(set: [f32;2], n: u32) -> i32 {
   |                                    --- expected `i32` because of return type
24 |     if n <= 2 {
25 |         return n;
   |                ^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
25 |         return n.try_into().unwrap();
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_emit.rs:25:16
   |
23 | fn f_gold(set: [f32;2], n: u32) -> i32 {
   |                                    --- expected `i32` because of return type
24 |     if n <= 2 {
25 |         return n;
   |                ^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
25 |         return n.try_into().unwrap();
```
