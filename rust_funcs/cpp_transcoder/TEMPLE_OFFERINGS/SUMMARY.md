# cpp_transcoder/TEMPLE_OFFERINGS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS.rs`
- Emit source: `rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `TEMPLE_OFFERINGS, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:16
   |
26 |             if temple_height[j] < temple_height[j+1] {
   |                ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:35
   |
26 |             if temple_height[j] < temple_height[j+1] {
   |                                   ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:33:16
```

### O1

- Status: failed
- Message:

```text
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:16
   |
26 |             if temple_height[j] < temple_height[j+1] {
   |                ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:35
   |
26 |             if temple_height[j] < temple_height[j+1] {
   |                                   ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:33:16
```

### O2

- Status: failed
- Message:

```text
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:16
   |
26 |             if temple_height[j] < temple_height[j+1] {
   |                ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:35
   |
26 |             if temple_height[j] < temple_height[j+1] {
   |                                   ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:33:16
```
