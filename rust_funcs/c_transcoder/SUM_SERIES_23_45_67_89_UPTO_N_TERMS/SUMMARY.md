# c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS.rs`
- Emit source: `rust_funcs/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `SUM_SERIES_23_45_67_89_UPTO_N_TERMS, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_emit.rs:26:12
   |
26 |         if sign {
   |            ^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O1

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_emit.rs:26:12
   |
26 |         if sign {
   |            ^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```

### O2

- Status: failed
- Message:

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_emit.rs:26:12
   |
26 |         if sign {
   |            ^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```
