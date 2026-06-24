# cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER.rs`
- Emit source: `rust_funcs/cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error: this file contains an unclosed delimiter
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_emit.rs:53:3
   |
22 | fn f_gold (arr: Vec<f32>, n: i32, num: f32, max_limit: f32) -> i32 {
   |                                                                    - unclosed delimiter
...
25 |     if dp[n as usize - 1][val as usize] > 0 {
   |                                             - this delimiter might not be properly closed...
...
53 | }
   | -^
   | |
```

### O1

- Status: failed
- Message:

```text
error: this file contains an unclosed delimiter
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_emit.rs:53:3
   |
22 | fn f_gold (arr: Vec<f32>, n: i32, num: f32, max_limit: f32) -> i32 {
   |                                                                    - unclosed delimiter
...
25 |     if dp[n as usize - 1][val as usize] > 0 {
   |                                             - this delimiter might not be properly closed...
...
53 | }
   | -^
   | |
```

### O2

- Status: failed
- Message:

```text
error: this file contains an unclosed delimiter
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_emit.rs:53:3
   |
22 | fn f_gold (arr: Vec<f32>, n: i32, num: f32, max_limit: f32) -> i32 {
   |                                                                    - unclosed delimiter
...
25 |     if dp[n as usize - 1][val as usize] > 0 {
   |                                             - this delimiter might not be properly closed...
...
53 | }
   | -^
   | |
```
