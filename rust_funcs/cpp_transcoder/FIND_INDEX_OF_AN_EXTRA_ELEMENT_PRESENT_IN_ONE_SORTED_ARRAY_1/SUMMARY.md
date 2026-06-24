# cpp_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1_emit.rs:25:28
   |
25 |     let mut right: usize = n - 1;
   |                    -----   ^^^^^ expected `usize`, found `u32`
   |                    |
   |                    expected due to this
   |
help: you can convert a `u32` to a `usize` and panic if the converted value doesn't fit
   |
25 |     let mut right: usize = (n - 1).try_into().unwrap();
   |                            +     +++++++++++++++++++++
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1_emit.rs:25:28
   |
25 |     let mut right: usize = n - 1;
   |                    -----   ^^^^^ expected `usize`, found `u32`
   |                    |
   |                    expected due to this
   |
help: you can convert a `u32` to a `usize` and panic if the converted value doesn't fit
   |
25 |     let mut right: usize = (n - 1).try_into().unwrap();
   |                            +     +++++++++++++++++++++
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1_emit.rs:25:28
   |
25 |     let mut right: usize = n - 1;
   |                    -----   ^^^^^ expected `usize`, found `u32`
   |                    |
   |                    expected due to this
   |
help: you can convert a `u32` to a `usize` and panic if the converted value doesn't fit
   |
25 |     let mut right: usize = (n - 1).try_into().unwrap();
   |                            +     +++++++++++++++++++++
```
