# cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT.rs`
- Emit source: `rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT, compile=1, bolero=1, bounded_kani=1, full_kani=1`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/O0.ll`
- Message:

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT_emit.rs:28:21
   |
28 |        digit_sum += (str.chars().nth(i).unwrap() as i32 - '0' as i32);
   |                     ^                                               ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
28 -        digit_sum += (str.chars().nth(i).unwrap() as i32 - '0' as i32);
28 +        digit_sum += str.chars().nth(i).unwrap() as i32 - '0' as i32;
   |
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/O1.ll`
- Message:

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT_emit.rs:28:21
   |
28 |        digit_sum += (str.chars().nth(i).unwrap() as i32 - '0' as i32);
   |                     ^                                               ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
28 -        digit_sum += (str.chars().nth(i).unwrap() as i32 - '0' as i32);
28 +        digit_sum += str.chars().nth(i).unwrap() as i32 - '0' as i32;
   |
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/O2.ll`
- Message:

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT_emit.rs:28:21
   |
28 |        digit_sum += (str.chars().nth(i).unwrap() as i32 - '0' as i32);
   |                     ^                                               ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
28 -        digit_sum += (str.chars().nth(i).unwrap() as i32 - '0' as i32);
28 +        digit_sum += str.chars().nth(i).unwrap() as i32 - '0' as i32;
   |
```
