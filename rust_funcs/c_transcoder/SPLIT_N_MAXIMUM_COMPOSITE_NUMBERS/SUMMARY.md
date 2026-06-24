# c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS.rs`
- Emit source: `rust_funcs/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0317]: `if` may be missing an `else` clause
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_emit.rs:38:5
   |
21 |   fn f_gold(n: i32) -> i32 {
   |                        --- expected `i32` because of this return type
...
38 | /     if rem == 3 {
39 | |         if n < 15 {
40 | |             return -1;
...  |
43 | |     }
   | |_____^ expected `i32`, found `()`
```

### O1

- Status: failed
- Message:

```text
error[E0317]: `if` may be missing an `else` clause
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_emit.rs:38:5
   |
21 |   fn f_gold(n: i32) -> i32 {
   |                        --- expected `i32` because of this return type
...
38 | /     if rem == 3 {
39 | |         if n < 15 {
40 | |             return -1;
...  |
43 | |     }
   | |_____^ expected `i32`, found `()`
```

### O2

- Status: failed
- Message:

```text
error[E0317]: `if` may be missing an `else` clause
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_emit.rs:38:5
   |
21 |   fn f_gold(n: i32) -> i32 {
   |                        --- expected `i32` because of this return type
...
38 | /     if rem == 3 {
39 | |         if n < 15 {
40 | |             return -1;
...  |
43 | |     }
   | |_____^ expected `i32`, found `()`
```
