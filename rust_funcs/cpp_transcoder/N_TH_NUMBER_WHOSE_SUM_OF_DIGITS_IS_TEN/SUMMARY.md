# cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN.rs`
- Emit source: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN, compile=1, bolero=1, bounded_kani=1, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/O0.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_emit.rs:42:5
   |
27 | /     loop {
28 | |         let mut sum = 0;
29 | |         let mut x = curr;
30 | |         while x > 0 {
...  |
40 | |         curr += 1;
41 | |     }
   | |_____- any code following this expression is unreachable
42 |       -1
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/O1.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_emit.rs:42:5
   |
27 | /     loop {
28 | |         let mut sum = 0;
29 | |         let mut x = curr;
30 | |         while x > 0 {
...  |
40 | |         curr += 1;
41 | |     }
   | |_____- any code following this expression is unreachable
42 |       -1
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/O2.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_emit.rs:42:5
   |
27 | /     loop {
28 | |         let mut sum = 0;
29 | |         let mut x = curr;
30 | |         while x > 0 {
...  |
40 | |         curr += 1;
41 | |     }
   | |_____- any code following this expression is unreachable
42 |       -1
```
