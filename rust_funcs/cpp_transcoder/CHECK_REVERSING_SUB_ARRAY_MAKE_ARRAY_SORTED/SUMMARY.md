# cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED.rs`
- Emit source: `rust_funcs/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error: missing `in` in `for` loop
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_emit.rs:26:14
   |
26 |    for front = 0; front < n; front += 1  {
   |              ^
   |
help: try using `in` here instead
   |
26 -    for front = 0; front < n; front += 1  {
26 +    for front in 0; front < n; front += 1  {
   |
error: expected `{`, found `;`
```

### O1

- Status: failed
- Message:

```text
error: missing `in` in `for` loop
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_emit.rs:26:14
   |
26 |    for front = 0; front < n; front += 1  {
   |              ^
   |
help: try using `in` here instead
   |
26 -    for front = 0; front < n; front += 1  {
26 +    for front in 0; front < n; front += 1  {
   |
error: expected `{`, found `;`
```

### O2

- Status: failed
- Message:

```text
error: missing `in` in `for` loop
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_emit.rs:26:14
   |
26 |    for front = 0; front < n; front += 1  {
   |              ^
   |
help: try using `in` here instead
   |
26 -    for front = 0; front < n; front += 1  {
26 +    for front in 0; front < n; front += 1  {
   |
error: expected `{`, found `;`
```
