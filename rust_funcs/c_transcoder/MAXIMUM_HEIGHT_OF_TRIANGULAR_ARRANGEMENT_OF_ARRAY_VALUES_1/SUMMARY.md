# c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1.rs`
- Emit source: `rust_funcs/c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1/O0.ll`
- Message:

```text
warning: unnecessary parentheses around function argument
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1_emit.rs:23:16
   |
23 |    (f32::floor((-1.0 + f32::sqrt(1.0 + (8.0 * n as f32)))) / 2.0) as i32
   |                ^                                        ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
23 -    (f32::floor((-1.0 + f32::sqrt(1.0 + (8.0 * n as f32)))) / 2.0) as i32
23 +    (f32::floor(-1.0 + f32::sqrt(1.0 + (8.0 * n as f32))) / 2.0) as i32
   |
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1/O1.ll`
- Message:

```text
warning: unnecessary parentheses around function argument
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1_emit.rs:23:16
   |
23 |    (f32::floor((-1.0 + f32::sqrt(1.0 + (8.0 * n as f32)))) / 2.0) as i32
   |                ^                                        ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
23 -    (f32::floor((-1.0 + f32::sqrt(1.0 + (8.0 * n as f32)))) / 2.0) as i32
23 +    (f32::floor(-1.0 + f32::sqrt(1.0 + (8.0 * n as f32))) / 2.0) as i32
   |
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1/O2.ll`
- Message:

```text
warning: unnecessary parentheses around function argument
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_1_emit.rs:23:16
   |
23 |    (f32::floor((-1.0 + f32::sqrt(1.0 + (8.0 * n as f32)))) / 2.0) as i32
   |                ^                                        ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
23 -    (f32::floor((-1.0 + f32::sqrt(1.0 + (8.0 * n as f32)))) / 2.0) as i32
23 +    (f32::floor(-1.0 + f32::sqrt(1.0 + (8.0 * n as f32))) / 2.0) as i32
   |
```
