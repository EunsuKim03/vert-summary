# cpp_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS.rs`
- Emit source: `rust_funcs/cpp_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `K_TH_ELEMENT_TWO_SORTED_ARRAYS, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs:22:51
    |
 22 |     let mut sorted: Vec<f32> = Vec::with_capacity(m + n);
    |                                ------------------ ^^^^^ expected `usize`, found `u32`
    |                                |
    |                                arguments to this function are incorrect
    |
note: associated function defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:522:12
    |
522 |     pub fn with_capacity(capacity: usize) -> Self {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs:22:51
    |
 22 |     let mut sorted: Vec<f32> = Vec::with_capacity(m + n);
    |                                ------------------ ^^^^^ expected `usize`, found `u32`
    |                                |
    |                                arguments to this function are incorrect
    |
note: associated function defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:522:12
    |
522 |     pub fn with_capacity(capacity: usize) -> Self {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs:22:51
    |
 22 |     let mut sorted: Vec<f32> = Vec::with_capacity(m + n);
    |                                ------------------ ^^^^^ expected `usize`, found `u32`
    |                                |
    |                                arguments to this function are incorrect
    |
note: associated function defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:522:12
    |
522 |     pub fn with_capacity(capacity: usize) -> Self {
```
