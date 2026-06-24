# cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED.rs`
- Emit source: `rust_funcs/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error: unexpected closing delimiter: `}`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_emit.rs:46:1
   |
21 | fn f_gold(expr: String) -> i32 {
   |                                - this opening brace...
...
45 | }
   | - ...matches this closing brace
46 | }
   | ^ unexpected closing delimiter
error: aborting due to 1 previous error
```

### O1

- Status: failed
- Message:

```text
error: unexpected closing delimiter: `}`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_emit.rs:46:1
   |
21 | fn f_gold(expr: String) -> i32 {
   |                                - this opening brace...
...
45 | }
   | - ...matches this closing brace
46 | }
   | ^ unexpected closing delimiter
error: aborting due to 1 previous error
```

### O2

- Status: failed
- Message:

```text
error: unexpected closing delimiter: `}`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_emit.rs:46:1
   |
21 | fn f_gold(expr: String) -> i32 {
   |                                - this opening brace...
...
45 | }
   | - ...matches this closing brace
46 | }
   | ^ unexpected closing delimiter
error: aborting due to 1 previous error
```
