# c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM.rs`
- Emit source: `rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_emit.rs:29:14
   |
29 |     dec[0] = inc[0] = arr[0];
   |     ------   ^^^^^^^^^^^^^^^ expected integer, found `()`
   |     |
   |     expected due to the type of this binding
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_emit.rs:33:20
    |
 33 |             if arr[j] > arr[i] {
    |                    ^ slice indices are of type `usize` or ranges of `usize`
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_emit.rs:29:14
   |
29 |     dec[0] = inc[0] = arr[0];
   |     ------   ^^^^^^^^^^^^^^^ expected integer, found `()`
   |     |
   |     expected due to the type of this binding
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_emit.rs:33:20
    |
 33 |             if arr[j] > arr[i] {
    |                    ^ slice indices are of type `usize` or ranges of `usize`
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_emit.rs:29:14
   |
29 |     dec[0] = inc[0] = arr[0];
   |     ------   ^^^^^^^^^^^^^^^ expected integer, found `()`
   |     |
   |     expected due to the type of this binding
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_emit.rs:33:20
    |
 33 |             if arr[j] > arr[i] {
    |                    ^ slice indices are of type `usize` or ranges of `usize`
```
