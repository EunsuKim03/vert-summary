# cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY.rs`
- Emit source: `rust_funcs/cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_emit.rs:28:5
   |
21 | fn f_gold(a: [f32;2], n: i32) -> i32 {
   |                                  --- expected `i32` because of return type
...
28 |     mn * (sum - mn)
   |     ^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_emit.rs:28:5
   |
21 | fn f_gold(a: [f32;2], n: i32) -> i32 {
   |                                  --- expected `i32` because of return type
...
28 |     mn * (sum - mn)
   |     ^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_emit.rs:28:5
   |
21 | fn f_gold(a: [f32;2], n: i32) -> i32 {
   |                                  --- expected `i32` because of return type
...
28 |     mn * (sum - mn)
   |     ^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
