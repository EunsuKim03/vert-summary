# c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE.rs`
- Emit source: `rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs:25:49
   |
25 |     if n > 2 {sum[2] = max(sum[1], max(arr[1] + arr[2], arr[0] + arr[2]));}
   |                                                 ^^^^^^ index out of bounds: the length is 2 but the index is 2
   |
   = note: `#[deny(unconditional_panic)]` on by default
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs:25:66
   |
25 |     if n > 2 {sum[2] = max(sum[1], max(arr[1] + arr[2], arr[0] + arr[2]));}
   |                                                                  ^^^^^^ index out of bounds: the length is 2 but the index is 2
```

### O1

- Status: failed
- Message:

```text
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs:25:49
   |
25 |     if n > 2 {sum[2] = max(sum[1], max(arr[1] + arr[2], arr[0] + arr[2]));}
   |                                                 ^^^^^^ index out of bounds: the length is 2 but the index is 2
   |
   = note: `#[deny(unconditional_panic)]` on by default
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs:25:66
   |
25 |     if n > 2 {sum[2] = max(sum[1], max(arr[1] + arr[2], arr[0] + arr[2]));}
   |                                                                  ^^^^^^ index out of bounds: the length is 2 but the index is 2
```

### O2

- Status: failed
- Message:

```text
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs:25:49
   |
25 |     if n > 2 {sum[2] = max(sum[1], max(arr[1] + arr[2], arr[0] + arr[2]));}
   |                                                 ^^^^^^ index out of bounds: the length is 2 but the index is 2
   |
   = note: `#[deny(unconditional_panic)]` on by default
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs:25:66
   |
25 |     if n > 2 {sum[2] = max(sum[1], max(arr[1] + arr[2], arr[0] + arr[2]));}
   |                                                                  ^^^^^^ index out of bounds: the length is 2 but the index is 2
```
