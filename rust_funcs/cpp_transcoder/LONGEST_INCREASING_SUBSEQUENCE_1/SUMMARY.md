# cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32;2]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `LONGEST_INCREASING_SUBSEQUENCE_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0282]: type annotations needed
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:29
   |
31 |    f_gold.iter().fold(0.0, |max, &x| max.max(x))
   |                             ^^^      --- type must be known at this point
   |
help: consider giving this closure parameter an explicit type
   |
31 |    f_gold.iter().fold(0.0, |max: /* Type */, &x| max.max(x))
   |                                ++++++++++++
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:23
```

### O1

- Status: failed
- Message:

```text
error[E0282]: type annotations needed
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:29
   |
31 |    f_gold.iter().fold(0.0, |max, &x| max.max(x))
   |                             ^^^      --- type must be known at this point
   |
help: consider giving this closure parameter an explicit type
   |
31 |    f_gold.iter().fold(0.0, |max: /* Type */, &x| max.max(x))
   |                                ++++++++++++
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:23
```

### O2

- Status: failed
- Message:

```text
error[E0282]: type annotations needed
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:29
   |
31 |    f_gold.iter().fold(0.0, |max, &x| max.max(x))
   |                             ^^^      --- type must be known at this point
   |
help: consider giving this closure parameter an explicit type
   |
31 |    f_gold.iter().fold(0.0, |max: /* Type */, &x| max.max(x))
   |                                ++++++++++++
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:23
```
