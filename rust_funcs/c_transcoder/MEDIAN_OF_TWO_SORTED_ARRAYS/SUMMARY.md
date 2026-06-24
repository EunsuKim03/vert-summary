# c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS.rs`
- Emit source: `rust_funcs/c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MEDIAN_OF_TWO_SORTED_ARRAYS, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_emit.rs:23:16
   |
23 | fn f_gold(ar1: [i32], ar2: [i32], n: i32) -> i32 {
   |                ^^^^^ doesn't have a size known at compile-time
   |
   = help: the trait `Sized` is not implemented for `[i32]`
help: function arguments must have a statically known size, borrowed slices always have a known size
   |
23 | fn f_gold(ar1: &[i32], ar2: [i32], n: i32) -> i32 {
   |                +
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
```

### O1

- Status: failed
- Message:

```text
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_emit.rs:23:16
   |
23 | fn f_gold(ar1: [i32], ar2: [i32], n: i32) -> i32 {
   |                ^^^^^ doesn't have a size known at compile-time
   |
   = help: the trait `Sized` is not implemented for `[i32]`
help: function arguments must have a statically known size, borrowed slices always have a known size
   |
23 | fn f_gold(ar1: &[i32], ar2: [i32], n: i32) -> i32 {
   |                +
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
```

### O2

- Status: failed
- Message:

```text
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_emit.rs:23:16
   |
23 | fn f_gold(ar1: [i32], ar2: [i32], n: i32) -> i32 {
   |                ^^^^^ doesn't have a size known at compile-time
   |
   = help: the trait `Sized` is not implemented for `[i32]`
help: function arguments must have a statically known size, borrowed slices always have a known size
   |
23 | fn f_gold(ar1: &[i32], ar2: [i32], n: i32) -> i32 {
   |                +
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
```
