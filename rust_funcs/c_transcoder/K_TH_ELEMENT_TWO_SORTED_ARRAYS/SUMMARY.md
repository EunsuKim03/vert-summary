# c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS.rs`
- Emit source: `rust_funcs/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `K_TH_ELEMENT_TWO_SORTED_ARRAYS, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs:47:5
   |
22 | fn f_gold(arr1: [f32;2], arr2: [f32;2], m: i32, n: i32, k: i32) -> i32 {
   |                                                                    --- expected `i32` because of return type
...
47 |     sorted1[k as usize - 1]
   |     ^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs:47:5
   |
22 | fn f_gold(arr1: [f32;2], arr2: [f32;2], m: i32, n: i32, k: i32) -> i32 {
   |                                                                    --- expected `i32` because of return type
...
47 |     sorted1[k as usize - 1]
   |     ^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs:47:5
   |
22 | fn f_gold(arr1: [f32;2], arr2: [f32;2], m: i32, n: i32, k: i32) -> i32 {
   |                                                                    --- expected `i32` because of return type
...
47 |     sorted1[k as usize - 1]
   |     ^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
