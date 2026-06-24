# c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT.rs`
- Emit source: `rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT_emit.rs:26:5
   |
26 |     (digit_sum % 9 == 0)
   |     ^                  ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -     (digit_sum % 9 == 0)
26 +     digit_sum % 9 == 0
   |
```

### O1

- Status: failed
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT_emit.rs:26:5
   |
26 |     (digit_sum % 9 == 0)
   |     ^                  ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -     (digit_sum % 9 == 0)
26 +     digit_sum % 9 == 0
   |
```

### O2

- Status: failed
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT_emit.rs:26:5
   |
26 |     (digit_sum % 9 == 0)
   |     ^                  ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -     (digit_sum % 9 == 0)
26 +     digit_sum % 9 == 0
   |
```
