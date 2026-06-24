# go_transcoder/CIRCLE_LATTICE_POINTS

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/go_transcoder/CIRCLE_LATTICE_POINTS/CIRCLE_LATTICE_POINTS.rs`
- Emit source: `rust_funcs/go_transcoder/CIRCLE_LATTICE_POINTS/CIRCLE_LATTICE_POINTS_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CIRCLE_LATTICE_POINTS, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/go_transcoder/CIRCLE_LATTICE_POINTS/O0.ll`

### O1

- Status: ok
- IR: `rust_funcs/go_transcoder/CIRCLE_LATTICE_POINTS/O1.ll`

### O2

- Status: ok
- IR: `rust_funcs/go_transcoder/CIRCLE_LATTICE_POINTS/O2.ll`
