# cpp_transcoder/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY.rs`
- Emit source: `rust_funcs/cpp_transcoder/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0433]: failed to resolve: use of unresolved module or unlinked crate `cmp`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY_emit.rs:32:13
   |
32 | max_count = cmp::max(max_count, count);
   |             ^^^ use of unresolved module or unlinked crate `cmp`
   |
   = help: you might be missing a crate named `cmp`
help: consider importing this module
   |
19 + use std::cmp;
   |
error[E0433]: failed to resolve: use of unresolved module or unlinked crate `cmp`
```

### O1

- Status: failed
- Message:

```text
error[E0433]: failed to resolve: use of unresolved module or unlinked crate `cmp`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY_emit.rs:32:13
   |
32 | max_count = cmp::max(max_count, count);
   |             ^^^ use of unresolved module or unlinked crate `cmp`
   |
   = help: you might be missing a crate named `cmp`
help: consider importing this module
   |
19 + use std::cmp;
   |
error[E0433]: failed to resolve: use of unresolved module or unlinked crate `cmp`
```

### O2

- Status: failed
- Message:

```text
error[E0433]: failed to resolve: use of unresolved module or unlinked crate `cmp`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY_emit.rs:32:13
   |
32 | max_count = cmp::max(max_count, count);
   |             ^^^ use of unresolved module or unlinked crate `cmp`
   |
   = help: you might be missing a crate named `cmp`
help: consider importing this module
   |
19 + use std::cmp;
   |
error[E0433]: failed to resolve: use of unresolved module or unlinked crate `cmp`
```
