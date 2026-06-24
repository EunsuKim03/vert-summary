# c_crown/0010_avl_delete

- Kind: crate-copy
- Status: failed
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_crown/0010_avl_delete/delete/src/delete.rs`
- Emit source: `rust_funcs/c_crown/0010_avl_delete/0010_avl_delete_emit.rs`
- CSV compile expected: unknown
- CSV duplicate rows: no
- Copied crate: `rust_funcs/c_crown/0010_avl_delete/delete`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0599]: the method `to_owned` exists for mutable reference `&mut Node`, but its trait bounds were not satisfied
  --> /root/es/vert/vert/rust_funcs/c_crown/0010_avl_delete/0010_avl_delete_emit.rs:43:24
   |
11 | struct Node {
   | ----------- doesn't satisfy `Node: Clone` or `Node: ToOwned`
...
43 |     y.left = Some(node.to_owned());
   |                        ^^^^^^^^ method cannot be called on `&mut Node` due to unsatisfied trait bounds
   |
   = note: the following trait bounds were not satisfied:
           `&mut Node: Clone`
           which is required by `&mut Node: ToOwned`
```

### O1

- Status: failed
- Message:

```text
error[E0599]: the method `to_owned` exists for mutable reference `&mut Node`, but its trait bounds were not satisfied
  --> /root/es/vert/vert/rust_funcs/c_crown/0010_avl_delete/0010_avl_delete_emit.rs:43:24
   |
11 | struct Node {
   | ----------- doesn't satisfy `Node: Clone` or `Node: ToOwned`
...
43 |     y.left = Some(node.to_owned());
   |                        ^^^^^^^^ method cannot be called on `&mut Node` due to unsatisfied trait bounds
   |
   = note: the following trait bounds were not satisfied:
           `&mut Node: Clone`
           which is required by `&mut Node: ToOwned`
```

### O2

- Status: failed
- Message:

```text
error[E0599]: the method `to_owned` exists for mutable reference `&mut Node`, but its trait bounds were not satisfied
  --> /root/es/vert/vert/rust_funcs/c_crown/0010_avl_delete/0010_avl_delete_emit.rs:43:24
   |
11 | struct Node {
   | ----------- doesn't satisfy `Node: Clone` or `Node: ToOwned`
...
43 |     y.left = Some(node.to_owned());
   |                        ^^^^^^^^ method cannot be called on `&mut Node` due to unsatisfied trait bounds
   |
   = note: the following trait bounds were not satisfied:
           `&mut Node: Clone`
           which is required by `&mut Node: ToOwned`
```
