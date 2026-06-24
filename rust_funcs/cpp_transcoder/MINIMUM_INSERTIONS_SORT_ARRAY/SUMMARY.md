# cpp_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY.rs`
- Emit source: `rust_funcs/cpp_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MINIMUM_INSERTIONS_SORT_ARRAY, compile=1, bolero=1, bounded_kani=1, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/O0.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_emit.rs:37:5
   |
37 |     (N - max)
   |     ^       ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
37 -     (N - max)
37 +     N - max
   |
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/O1.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_emit.rs:37:5
   |
37 |     (N - max)
   |     ^       ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
37 -     (N - max)
37 +     N - max
   |
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/O2.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_emit.rs:37:5
   |
37 |     (N - max)
   |     ^       ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
37 -     (N - max)
37 +     N - max
   |
```
