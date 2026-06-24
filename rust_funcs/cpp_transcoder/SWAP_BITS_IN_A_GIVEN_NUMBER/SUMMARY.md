# cpp_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER.rs`
- Emit source: `rust_funcs/cpp_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SWAP_BITS_IN_A_GIVEN_NUMBER, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs:24:19
   |
24 |     let mut xor = (set1 ^ set2);
   |                   ^           ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
24 -     let mut xor = (set1 ^ set2);
24 +     let mut xor = set1 ^ set2;
   |
```

### O1

- Status: failed
- Message:

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs:24:19
   |
24 |     let mut xor = (set1 ^ set2);
   |                   ^           ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
24 -     let mut xor = (set1 ^ set2);
24 +     let mut xor = set1 ^ set2;
   |
```

### O2

- Status: failed
- Message:

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs:24:19
   |
24 |     let mut xor = (set1 ^ set2);
   |                   ^           ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
24 -     let mut xor = (set1 ^ set2);
24 +     let mut xor = set1 ^ set2;
   |
```
