# c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/SQUARE_ROOT_OF_AN_INTEGER_1.rs`
- Emit source: `rust_funcs/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/SQUARE_ROOT_OF_AN_INTEGER_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SQUARE_ROOT_OF_AN_INTEGER_1, compile=1, bolero=1, bounded_kani=1, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/O0.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/SQUARE_ROOT_OF_AN_INTEGER_1_emit.rs:43:5
   |
30 | /     loop {
31 | |         let mid = (start + end) / 2;
32 | |         if mid * mid == x {
33 | |             return mid;
...  |
42 | |     }
   | |_____- any code following this expression is unreachable
43 |       ans
   |       ^^^ unreachable expression
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/O1.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/SQUARE_ROOT_OF_AN_INTEGER_1_emit.rs:43:5
   |
30 | /     loop {
31 | |         let mid = (start + end) / 2;
32 | |         if mid * mid == x {
33 | |             return mid;
...  |
42 | |     }
   | |_____- any code following this expression is unreachable
43 |       ans
   |       ^^^ unreachable expression
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/O2.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/SQUARE_ROOT_OF_AN_INTEGER_1_emit.rs:43:5
   |
30 | /     loop {
31 | |         let mid = (start + end) / 2;
32 | |         if mid * mid == x {
33 | |             return mid;
...  |
42 | |     }
   | |_____- any code following this expression is unreachable
43 |       ans
   |       ^^^ unreachable expression
```
