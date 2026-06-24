# cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_emit.rs:28:14
   |
28 |     sum[2] = ar[2];
   |              ^^^^^ index out of bounds: the length is 2 but the index is 2
   |
   = note: `#[deny(unconditional_panic)]` on by default
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_emit.rs:29:14
   |
29 |     sum[3] = ar[3];
   |              ^^^^^ index out of bounds: the length is 2 but the index is 3
```

### O1

- Status: failed
- Message:

```text
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_emit.rs:28:14
   |
28 |     sum[2] = ar[2];
   |              ^^^^^ index out of bounds: the length is 2 but the index is 2
   |
   = note: `#[deny(unconditional_panic)]` on by default
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_emit.rs:29:14
   |
29 |     sum[3] = ar[3];
   |              ^^^^^ index out of bounds: the length is 2 but the index is 3
```

### O2

- Status: failed
- Message:

```text
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_emit.rs:28:14
   |
28 |     sum[2] = ar[2];
   |              ^^^^^ index out of bounds: the length is 2 but the index is 2
   |
   = note: `#[deny(unconditional_panic)]` on by default
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_emit.rs:29:14
   |
29 |     sum[3] = ar[3];
   |              ^^^^^ index out of bounds: the length is 2 but the index is 3
```
