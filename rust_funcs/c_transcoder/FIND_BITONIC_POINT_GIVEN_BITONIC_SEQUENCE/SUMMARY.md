# c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE.rs`
- Emit source: `rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs:27:20
   |
23 | fn f_gold(mut arr: [f32;2], mut left: f32, mut right: f32) -> i32 {
   |                                                               --- expected `i32` because of return type
...
27 |             return mid;
   |                    ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs:35:5
   |
23 | fn f_gold(mut arr: [f32;2], mut left: f32, mut right: f32) -> i32 {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs:27:20
   |
23 | fn f_gold(mut arr: [f32;2], mut left: f32, mut right: f32) -> i32 {
   |                                                               --- expected `i32` because of return type
...
27 |             return mid;
   |                    ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs:35:5
   |
23 | fn f_gold(mut arr: [f32;2], mut left: f32, mut right: f32) -> i32 {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs:27:20
   |
23 | fn f_gold(mut arr: [f32;2], mut left: f32, mut right: f32) -> i32 {
   |                                                               --- expected `i32` because of return type
...
27 |             return mid;
   |                    ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs:35:5
   |
23 | fn f_gold(mut arr: [f32;2], mut left: f32, mut right: f32) -> i32 {
```
