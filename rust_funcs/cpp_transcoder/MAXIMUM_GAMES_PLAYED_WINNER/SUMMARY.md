# cpp_transcoder/MAXIMUM_GAMES_PLAYED_WINNER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER.rs`
- Emit source: `rust_funcs/cpp_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_GAMES_PLAYED_WINNER, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_emit.rs:29:5
   |
22 | fn f_gold(N: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
29 |     i - 2
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
29 |     (i - 2).try_into().unwrap()
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_emit.rs:29:5
   |
22 | fn f_gold(N: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
29 |     i - 2
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
29 |     (i - 2).try_into().unwrap()
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_emit.rs:29:5
   |
22 | fn f_gold(N: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
29 |     i - 2
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
29 |     (i - 2).try_into().unwrap()
```
