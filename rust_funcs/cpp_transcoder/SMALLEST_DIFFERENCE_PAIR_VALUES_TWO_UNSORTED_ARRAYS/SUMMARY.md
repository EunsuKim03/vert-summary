# cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed `[T; n]` parameter to slice parameter; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS.rs`
- Emit source: `rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0425]: cannot find value `m` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:28:15
   |
28 |     while a < m && b < n  {
   |               ^ help: a local variable with a similar name exists: `A`
error[E0425]: cannot find value `n` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:28:24
   |
28 |     while a < m && b < n  {
   |                        ^ help: a local variable with a similar name exists: `A`
error[E0277]: the trait bound `f32: Ord` is not satisfied
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:23:7
```

### O1

- Status: failed
- Message:

```text
error[E0425]: cannot find value `m` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:28:15
   |
28 |     while a < m && b < n  {
   |               ^ help: a local variable with a similar name exists: `A`
error[E0425]: cannot find value `n` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:28:24
   |
28 |     while a < m && b < n  {
   |                        ^ help: a local variable with a similar name exists: `A`
error[E0277]: the trait bound `f32: Ord` is not satisfied
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:23:7
```

### O2

- Status: failed
- Message:

```text
error[E0425]: cannot find value `m` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:28:15
   |
28 |     while a < m && b < n  {
   |               ^ help: a local variable with a similar name exists: `A`
error[E0425]: cannot find value `n` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:28:24
   |
28 |     while a < m && b < n  {
   |                        ^ help: a local variable with a similar name exists: `A`
error[E0277]: the trait bound `f32: Ord` is not satisfied
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:23:7
```
