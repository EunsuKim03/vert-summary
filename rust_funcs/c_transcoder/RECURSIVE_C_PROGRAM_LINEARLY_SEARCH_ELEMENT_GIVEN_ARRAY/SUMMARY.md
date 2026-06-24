# c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY.rs`
- Emit source: `rust_funcs/c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
warning: unnecessary parentheses around `if` condition
  --> /root/es/vert/vert/rust_funcs/c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY_emit.rs:23:8
   |
23 |     if (r < l) {
   |        ^     ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
23 -     if (r < l) {
23 +     if r < l {
   |
```

### O1

- Status: failed
- Message:

```text
warning: unnecessary parentheses around `if` condition
  --> /root/es/vert/vert/rust_funcs/c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY_emit.rs:23:8
   |
23 |     if (r < l) {
   |        ^     ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
23 -     if (r < l) {
23 +     if r < l {
   |
```

### O2

- Status: failed
- Message:

```text
warning: unnecessary parentheses around `if` condition
  --> /root/es/vert/vert/rust_funcs/c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY_emit.rs:23:8
   |
23 |     if (r < l) {
   |        ^     ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
23 -     if (r < l) {
23 +     if r < l {
   |
```
