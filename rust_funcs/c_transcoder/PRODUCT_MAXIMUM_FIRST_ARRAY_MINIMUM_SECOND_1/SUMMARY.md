# c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1.rs`
- Emit source: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/O0.ll`
- Message:

```text
warning: unnecessary parentheses around index expression
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_emit.rs:26:17
   |
26 |         if arr1[(i as usize)] > max {
   |                 ^          ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -         if arr1[(i as usize)] > max {
26 +         if arr1[i as usize] > max {
   |
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/O1.ll`
- Message:

```text
warning: unnecessary parentheses around index expression
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_emit.rs:26:17
   |
26 |         if arr1[(i as usize)] > max {
   |                 ^          ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -         if arr1[(i as usize)] > max {
26 +         if arr1[i as usize] > max {
   |
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/O2.ll`
- Message:

```text
warning: unnecessary parentheses around index expression
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_emit.rs:26:17
   |
26 |         if arr1[(i as usize)] > max {
   |                 ^          ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -         if arr1[(i as usize)] > max {
26 +         if arr1[i as usize] > max {
   |
```
