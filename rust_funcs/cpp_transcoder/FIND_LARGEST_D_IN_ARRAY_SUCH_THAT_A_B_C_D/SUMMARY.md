# cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D.rs`
- Emit source: `rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_emit.rs:38:7
   |
38 |    if !found {
   |       ^^^^^^ expected `bool`, found integer
error[E0317]: `if` may be missing an `else` clause
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_emit.rs:38:4
   |
20 |   fn f_gold(S: [i32;2], n: i32) -> i32 {
   |                                    --- expected `i32` because of this return type
...
38 | /    if !found {
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_emit.rs:38:7
   |
38 |    if !found {
   |       ^^^^^^ expected `bool`, found integer
error[E0317]: `if` may be missing an `else` clause
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_emit.rs:38:4
   |
20 |   fn f_gold(S: [i32;2], n: i32) -> i32 {
   |                                    --- expected `i32` because of this return type
...
38 | /    if !found {
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_emit.rs:38:7
   |
38 |    if !found {
   |       ^^^^^^ expected `bool`, found integer
error[E0317]: `if` may be missing an `else` clause
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_emit.rs:38:4
   |
20 |   fn f_gold(S: [i32;2], n: i32) -> i32 {
   |                                    --- expected `i32` because of this return type
...
38 | /    if !found {
```
