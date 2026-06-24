# c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1.rs`
- Emit source: `rust_funcs/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0252]: the name `i32` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs:21:5
   |
20 | use std::i32;
   |     -------- previous import of the module `i32` here
21 | use std::i32;
   |     ^^^^^^^^ `i32` reimported here
   |
   = note: `i32` must be defined only once in the type namespace of this module
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0252`.
```

### O1

- Status: failed
- Message:

```text
error[E0252]: the name `i32` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs:21:5
   |
20 | use std::i32;
   |     -------- previous import of the module `i32` here
21 | use std::i32;
   |     ^^^^^^^^ `i32` reimported here
   |
   = note: `i32` must be defined only once in the type namespace of this module
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0252`.
```

### O2

- Status: failed
- Message:

```text
error[E0252]: the name `i32` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs:21:5
   |
20 | use std::i32;
   |     -------- previous import of the module `i32` here
21 | use std::i32;
   |     ^^^^^^^^ `i32` reimported here
   |
   = note: `i32` must be defined only once in the type namespace of this module
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0252`.
```
