# cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE/PRINT_SHORTEST_COMMON_SUPERSEQUENCE.rs`
- Emit source: `rust_funcs/cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE/PRINT_SHORTEST_COMMON_SUPERSEQUENCE_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `PRINT_SHORTEST_COMMON_SUPERSEQUENCE, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0255]: the name `min` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE/PRINT_SHORTEST_COMMON_SUPERSEQUENCE_emit.rs:19:5
   |
 9 | fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
   | ----------------------------- previous definition of the value `min` here
...
19 | use std::cmp::min;
   |     ^^^^^^^^^^^^^ `min` reimported here
   |
   = note: `min` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```

### O1

- Status: failed
- Message:

```text
error[E0255]: the name `min` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE/PRINT_SHORTEST_COMMON_SUPERSEQUENCE_emit.rs:19:5
   |
 9 | fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
   | ----------------------------- previous definition of the value `min` here
...
19 | use std::cmp::min;
   |     ^^^^^^^^^^^^^ `min` reimported here
   |
   = note: `min` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```

### O2

- Status: failed
- Message:

```text
error[E0255]: the name `min` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE/PRINT_SHORTEST_COMMON_SUPERSEQUENCE_emit.rs:19:5
   |
 9 | fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
   | ----------------------------- previous definition of the value `min` here
...
19 | use std::cmp::min;
   |     ^^^^^^^^^^^^^ `min` reimported here
   |
   = note: `min` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```
