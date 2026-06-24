# cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT.rs`
- Emit source: `rust_funcs/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0255]: the name `max` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_emit.rs:19:5
   |
11 | fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
   | ----------------------------- previous definition of the value `max` here
...
19 | use std::cmp::max;
   |     ^^^^^^^^^^^^^ `max` reimported here
   |
   = note: `max` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```

### O1

- Status: failed
- Message:

```text
error[E0255]: the name `max` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_emit.rs:19:5
   |
11 | fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
   | ----------------------------- previous definition of the value `max` here
...
19 | use std::cmp::max;
   |     ^^^^^^^^^^^^^ `max` reimported here
   |
   = note: `max` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```

### O2

- Status: failed
- Message:

```text
error[E0255]: the name `max` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_emit.rs:19:5
   |
11 | fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
   | ----------------------------- previous definition of the value `max` here
...
19 | use std::cmp::max;
   |     ^^^^^^^^^^^^^ `max` reimported here
   |
   = note: `max` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```
