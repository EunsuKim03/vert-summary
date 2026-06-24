# c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY.rs`
- Emit source: `rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:33:20
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
   |                                            --- expected `i32` because of return type
...
33 |             return arr[i];
   |                    ^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:36:1
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:33:20
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
   |                                            --- expected `i32` because of return type
...
33 |             return arr[i];
   |                    ^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:36:1
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:33:20
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
   |                                            --- expected `i32` because of return type
...
33 |             return arr[i];
   |                    ^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:36:1
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
```
