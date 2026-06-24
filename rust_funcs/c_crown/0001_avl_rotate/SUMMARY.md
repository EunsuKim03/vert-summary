# c_crown/0001_avl_rotate

- Kind: crate-copy
- Status: failed
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0001_avl_rotate/rotate/src/rotate.rs`
- Emit source: `rust_funcs/c_crown/0001_avl_rotate/0001_avl_rotate_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0001_avl_rotate/rotate`
- CSV rows:
  - `0001_avl_rotate, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/c_crown/0001_avl_rotate/0001_avl_rotate_emit.rs:27:14
    |
 27 |     Box::new(x)
    |     -------- ^ expected `Node`, found `Box<Node>`
    |     |
    |     arguments to this function are incorrect
    |
    = note: expected struct `Node`
               found struct `Box<Node>`
note: associated function defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/boxed.rs:264:12
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/c_crown/0001_avl_rotate/0001_avl_rotate_emit.rs:27:14
    |
 27 |     Box::new(x)
    |     -------- ^ expected `Node`, found `Box<Node>`
    |     |
    |     arguments to this function are incorrect
    |
    = note: expected struct `Node`
               found struct `Box<Node>`
note: associated function defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/boxed.rs:264:12
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/c_crown/0001_avl_rotate/0001_avl_rotate_emit.rs:27:14
    |
 27 |     Box::new(x)
    |     -------- ^ expected `Node`, found `Box<Node>`
    |     |
    |     arguments to this function are incorrect
    |
    = note: expected struct `Node`
               found struct `Box<Node>`
note: associated function defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/boxed.rs:264:12
```
