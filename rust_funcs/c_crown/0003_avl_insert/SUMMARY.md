# c_crown/0003_avl_insert

- Kind: crate-copy
- Status: failed
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0003_avl_insert/insert/src/insert.rs`
- Emit source: `rust_funcs/c_crown/0003_avl_insert/0003_avl_insert_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0003_avl_insert/insert`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0596]: cannot borrow `n.right` as mutable, as `n` is not declared as mutable
  --> /root/es/vert/vert/rust_funcs/c_crown/0003_avl_insert/0003_avl_insert_emit.rs:28:14
   |
28 |         Some(n) => {
   |              ^ not mutable
29 |             if key < n.key {
30 |                 n.left = insert(n.left.take(), key);
   |                                 ------ cannot borrow as mutable
31 |             } else {
32 |                 n.right = insert(n.right.take(), key);
   |                                  ------- cannot borrow as mutable
   |
```

### O1

- Status: failed
- Message:

```text
error[E0596]: cannot borrow `n.right` as mutable, as `n` is not declared as mutable
  --> /root/es/vert/vert/rust_funcs/c_crown/0003_avl_insert/0003_avl_insert_emit.rs:28:14
   |
28 |         Some(n) => {
   |              ^ not mutable
29 |             if key < n.key {
30 |                 n.left = insert(n.left.take(), key);
   |                                 ------ cannot borrow as mutable
31 |             } else {
32 |                 n.right = insert(n.right.take(), key);
   |                                  ------- cannot borrow as mutable
   |
```

### O2

- Status: failed
- Message:

```text
error[E0596]: cannot borrow `n.right` as mutable, as `n` is not declared as mutable
  --> /root/es/vert/vert/rust_funcs/c_crown/0003_avl_insert/0003_avl_insert_emit.rs:28:14
   |
28 |         Some(n) => {
   |              ^ not mutable
29 |             if key < n.key {
30 |                 n.left = insert(n.left.take(), key);
   |                                 ------ cannot borrow as mutable
31 |             } else {
32 |                 n.right = insert(n.right.take(), key);
   |                                  ------- cannot borrow as mutable
   |
```
