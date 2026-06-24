# c_crown/0012_buffer_resize

- Kind: crate-copy
- Status: failed
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0012_buffer_resize/buffer_complex/src/buffer.rs`
- Emit source: `rust_funcs/c_crown/0012_buffer_resize/0012_buffer_resize_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0012_buffer_resize/buffer_complex`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0658]: use of unstable library feature `allocator_api`
  --> /root/es/vert/vert/rust_funcs/c_crown/0012_buffer_resize/0012_buffer_resize_emit.rs:18:50
   |
18 |     fn resize(&mut self, n: usize) -> Result<(), std::alloc::AllocError> {
   |                                                  ^^^^^^^^^^^^^^^^^^^^^^
   |
   = note: see issue #32838 <https://github.com/rust-lang/rust/issues/32838> for more information
error[E0658]: use of unstable library feature `allocator_api`
  --> /root/es/vert/vert/rust_funcs/c_crown/0012_buffer_resize/0012_buffer_resize_emit.rs:26:65
   |
26 |     fn append_n(&mut self, str: &str, len: usize) -> Result<(), std::alloc::AllocError> {
   |                                                                 ^^^^^^^^^^^^^^^^^^^^^^
```

### O1

- Status: failed
- Message:

```text
error[E0658]: use of unstable library feature `allocator_api`
  --> /root/es/vert/vert/rust_funcs/c_crown/0012_buffer_resize/0012_buffer_resize_emit.rs:18:50
   |
18 |     fn resize(&mut self, n: usize) -> Result<(), std::alloc::AllocError> {
   |                                                  ^^^^^^^^^^^^^^^^^^^^^^
   |
   = note: see issue #32838 <https://github.com/rust-lang/rust/issues/32838> for more information
error[E0658]: use of unstable library feature `allocator_api`
  --> /root/es/vert/vert/rust_funcs/c_crown/0012_buffer_resize/0012_buffer_resize_emit.rs:26:65
   |
26 |     fn append_n(&mut self, str: &str, len: usize) -> Result<(), std::alloc::AllocError> {
   |                                                                 ^^^^^^^^^^^^^^^^^^^^^^
```

### O2

- Status: failed
- Message:

```text
error[E0658]: use of unstable library feature `allocator_api`
  --> /root/es/vert/vert/rust_funcs/c_crown/0012_buffer_resize/0012_buffer_resize_emit.rs:18:50
   |
18 |     fn resize(&mut self, n: usize) -> Result<(), std::alloc::AllocError> {
   |                                                  ^^^^^^^^^^^^^^^^^^^^^^
   |
   = note: see issue #32838 <https://github.com/rust-lang/rust/issues/32838> for more information
error[E0658]: use of unstable library feature `allocator_api`
  --> /root/es/vert/vert/rust_funcs/c_crown/0012_buffer_resize/0012_buffer_resize_emit.rs:26:65
   |
26 |     fn append_n(&mut self, str: &str, len: usize) -> Result<(), std::alloc::AllocError> {
   |                                                                 ^^^^^^^^^^^^^^^^^^^^^^
```
