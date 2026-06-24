# cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1, compile=1, bolero=1, bounded_kani=1, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1/O0.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1_emit.rs:39:3
   |
24 | /   loop {
25 | |     let mut sum = 0;
26 | |     let mut x = curr;
27 | |     while x > 0 {
...  |
37 | |     curr += 9;
38 | |   }
   | |___- any code following this expression is unreachable
39 |     -1
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1/O1.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1_emit.rs:39:3
   |
24 | /   loop {
25 | |     let mut sum = 0;
26 | |     let mut x = curr;
27 | |     while x > 0 {
...  |
37 | |     curr += 9;
38 | |   }
   | |___- any code following this expression is unreachable
39 |     -1
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1/O2.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_1_emit.rs:39:3
   |
24 | /   loop {
25 | |     let mut sum = 0;
26 | |     let mut x = curr;
27 | |     while x > 0 {
...  |
37 | |     curr += 9;
38 | |   }
   | |___- any code following this expression is unreachable
39 |     -1
```
