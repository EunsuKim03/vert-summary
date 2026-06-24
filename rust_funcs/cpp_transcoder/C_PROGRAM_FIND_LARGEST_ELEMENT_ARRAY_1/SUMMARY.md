# cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1, compile=1, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1_emit.rs:24:20
     |
  24 |    arr.iter().fold(f32::MIN, |max, &x| f32::max(max, x))
     |               ---- ^^^^^^^^ expected `i32`, found `f32`
     |               |
     |               arguments to this method are incorrect
     |
help: the return type of this call is `f32` due to the type of the argument passed
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1_emit.rs:24:4
     |
  24 |    arr.iter().fold(f32::MIN, |max, &x| f32::max(max, x))
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1_emit.rs:24:20
     |
  24 |    arr.iter().fold(f32::MIN, |max, &x| f32::max(max, x))
     |               ---- ^^^^^^^^ expected `i32`, found `f32`
     |               |
     |               arguments to this method are incorrect
     |
help: the return type of this call is `f32` due to the type of the argument passed
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1_emit.rs:24:4
     |
  24 |    arr.iter().fold(f32::MIN, |max, &x| f32::max(max, x))
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1_emit.rs:24:20
     |
  24 |    arr.iter().fold(f32::MIN, |max, &x| f32::max(max, x))
     |               ---- ^^^^^^^^ expected `i32`, found `f32`
     |               |
     |               arguments to this method are incorrect
     |
help: the return type of this call is `f32` due to the type of the argument passed
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1_emit.rs:24:4
     |
  24 |    arr.iter().fold(f32::MIN, |max, &x| f32::max(max, x))
```
