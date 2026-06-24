# cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr1:i32 [f32]`; repaired malformed array parameter `arr2:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND.rs`
- Emit source: `rust_funcs/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit.rs:24:4
   |
21 | fn f_gold(arr1: &mut [f32], arr2: &mut [f32], n1: i32, n2: i32) -> i32 {
   |                                                                    --- expected `i32` because of return type
...
24 |    arr1[n1 as usize - 1] * arr2[0]
   |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit.rs:24:4
   |
21 | fn f_gold(arr1: &mut [f32], arr2: &mut [f32], n1: i32, n2: i32) -> i32 {
   |                                                                    --- expected `i32` because of return type
...
24 |    arr1[n1 as usize - 1] * arr2[0]
   |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit.rs:24:4
   |
21 | fn f_gold(arr1: &mut [f32], arr2: &mut [f32], n1: i32, n2: i32) -> i32 {
   |                                                                    --- expected `i32` because of return type
...
24 |    arr1[n1 as usize - 1] * arr2[0]
   |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
