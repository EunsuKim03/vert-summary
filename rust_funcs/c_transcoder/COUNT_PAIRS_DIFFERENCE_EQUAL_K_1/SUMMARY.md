# c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1.rs`
- Emit source: `rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `COUNT_PAIRS_DIFFERENCE_EQUAL_K_1, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/O0.ll`
- Message:

```text
warning: unreachable pattern
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_emit.rs:33:13
   |
28 |             k => {
   |             - matches any value
...
33 |             d if d > k => l += 1,
   |             ^ no value can reach this
   |
   = note: `#[warn(unreachable_patterns)]` (part of `#[warn(unused)]`) on by default
warning: unreachable pattern
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_emit.rs:34:13
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/O1.ll`
- Message:

```text
warning: unreachable pattern
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_emit.rs:33:13
   |
28 |             k => {
   |             - matches any value
...
33 |             d if d > k => l += 1,
   |             ^ no value can reach this
   |
   = note: `#[warn(unreachable_patterns)]` (part of `#[warn(unused)]`) on by default
warning: unreachable pattern
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_emit.rs:34:13
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/O2.ll`
- Message:

```text
warning: unreachable pattern
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_emit.rs:33:13
   |
28 |             k => {
   |             - matches any value
...
33 |             d if d > k => l += 1,
   |             ^ no value can reach this
   |
   = note: `#[warn(unreachable_patterns)]` (part of `#[warn(unused)]`) on by default
warning: unreachable pattern
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_emit.rs:34:13
```
