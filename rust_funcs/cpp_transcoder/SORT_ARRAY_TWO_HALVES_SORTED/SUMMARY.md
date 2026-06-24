# cpp_transcoder/SORT_ARRAY_TWO_HALVES_SORTED

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `a:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/SORT_ARRAY_TWO_HALVES_SORTED/SORT_ARRAY_TWO_HALVES_SORTED.rs`
- Emit source: `rust_funcs/cpp_transcoder/SORT_ARRAY_TWO_HALVES_SORTED/SORT_ARRAY_TWO_HALVES_SORTED_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `SORT_ARRAY_TWO_HALVES_SORTED, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0596]: cannot borrow `*a` as mutable, as it is behind a `&` reference
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SORT_ARRAY_TWO_HALVES_SORTED/SORT_ARRAY_TWO_HALVES_SORTED_emit.rs:23:5
   |
23 |     a.sort_unstable();
   |     ^ `a` is a `&` reference, so it cannot be borrowed as mutable
   |
help: consider changing this to be a mutable reference
   |
22 | fn f_gold(a: &mut [i32], n: i32) {
   |               +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0596`.
```

### O1

- Status: failed
- Message:

```text
error[E0596]: cannot borrow `*a` as mutable, as it is behind a `&` reference
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SORT_ARRAY_TWO_HALVES_SORTED/SORT_ARRAY_TWO_HALVES_SORTED_emit.rs:23:5
   |
23 |     a.sort_unstable();
   |     ^ `a` is a `&` reference, so it cannot be borrowed as mutable
   |
help: consider changing this to be a mutable reference
   |
22 | fn f_gold(a: &mut [i32], n: i32) {
   |               +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0596`.
```

### O2

- Status: failed
- Message:

```text
error[E0596]: cannot borrow `*a` as mutable, as it is behind a `&` reference
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SORT_ARRAY_TWO_HALVES_SORTED/SORT_ARRAY_TWO_HALVES_SORTED_emit.rs:23:5
   |
23 |     a.sort_unstable();
   |     ^ `a` is a `&` reference, so it cannot be borrowed as mutable
   |
help: consider changing this to be a mutable reference
   |
22 | fn f_gold(a: &mut [i32], n: i32) {
   |               +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0596`.
```
