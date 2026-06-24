# cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY.rs`
- Emit source: `rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_emit.rs:34:12
   |
34 |         if is_single {
   |            ^^^^^^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_emit.rs:34:12
   |
34 |         if is_single {
   |            ^^^^^^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_emit.rs:34:12
   |
34 |         if is_single {
   |            ^^^^^^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
