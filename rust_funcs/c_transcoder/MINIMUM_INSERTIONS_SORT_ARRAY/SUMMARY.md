# c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY.rs`
- Emit source: `rust_funcs/c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MINIMUM_INSERTIONS_SORT_ARRAY, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_emit.rs:39:5
   |
39 |     (N - max)
   |     ^       ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
39 -     (N - max)
39 +     N - max
   |
```

### O1

- Status: failed
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_emit.rs:39:5
   |
39 |     (N - max)
   |     ^       ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
39 -     (N - max)
39 +     N - max
   |
```

### O2

- Status: failed
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_emit.rs:39:5
   |
39 |     (N - max)
   |     ^       ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
39 -     (N - max)
39 +     N - max
   |
```
