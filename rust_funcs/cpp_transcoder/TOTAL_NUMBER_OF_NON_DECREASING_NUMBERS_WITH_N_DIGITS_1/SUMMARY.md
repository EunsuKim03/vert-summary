# cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1, compile=1, bolero=1, bounded_kani=1, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/O0.ll`
- Message:

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs:26:18
   |
26 |         count *= (N + (i - 1) as f32);
   |                  ^                  ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -         count *= (N + (i - 1) as f32);
26 +         count *= N + (i - 1) as f32;
   |
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/O1.ll`
- Message:

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs:26:18
   |
26 |         count *= (N + (i - 1) as f32);
   |                  ^                  ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -         count *= (N + (i - 1) as f32);
26 +         count *= N + (i - 1) as f32;
   |
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/O2.ll`
- Message:

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs:26:18
   |
26 |         count *= (N + (i - 1) as f32);
   |                  ^                  ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -         count *= (N + (i - 1) as f32);
26 +         count *= N + (i - 1) as f32;
   |
```
