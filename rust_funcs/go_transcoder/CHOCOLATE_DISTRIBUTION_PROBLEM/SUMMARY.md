# go_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed `[T; n: Ty]` parameter to slice plus size parameter; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM.rs`
- Emit source: `rust_funcs/go_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHOCOLATE_DISTRIBUTION_PROBLEM, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0255]: the name `min` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:19:5
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
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:19:5
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
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:19:5
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
