# c_transcoder/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON.rs`
- Emit source: `rust_funcs/c_transcoder/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON, compile=1, bolero=1, bounded_kani=1, full_kani=1`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON/O0.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON_emit.rs:22:4
   |
22 |    (2.0 * (f32::sqrt(3.0)) * (side * side))
   |    ^                                      ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
22 -    (2.0 * (f32::sqrt(3.0)) * (side * side))
22 +    2.0 * (f32::sqrt(3.0)) * (side * side)
   |
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON/O1.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON_emit.rs:22:4
   |
22 |    (2.0 * (f32::sqrt(3.0)) * (side * side))
   |    ^                                      ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
22 -    (2.0 * (f32::sqrt(3.0)) * (side * side))
22 +    2.0 * (f32::sqrt(3.0)) * (side * side)
   |
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON/O2.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON/PROGRAM_FOR_SURFACE_AREA_OF_OCTAHEDRON_emit.rs:22:4
   |
22 |    (2.0 * (f32::sqrt(3.0)) * (side * side))
   |    ^                                      ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
22 -    (2.0 * (f32::sqrt(3.0)) * (side * side))
22 +    2.0 * (f32::sqrt(3.0)) * (side * side)
   |
```
