# c_transcoder/PAINTING_FENCE_ALGORITHM

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; escaped keyword variable `mod` as raw identifier; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM.rs`
- Emit source: `rust_funcs/c_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `PAINTING_FENCE_ALGORITHM, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/PAINTING_FENCE_ALGORITHM/O0.ll`
- Message:

```text
warning: value assigned to `same` is never read
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_emit.rs:23:20
   |
23 |     let mut same = 0;
   |                    ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/PAINTING_FENCE_ALGORITHM/O1.ll`
- Message:

```text
warning: value assigned to `same` is never read
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_emit.rs:23:20
   |
23 |     let mut same = 0;
   |                    ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/PAINTING_FENCE_ALGORITHM/O2.ll`
- Message:

```text
warning: value assigned to `same` is never read
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_emit.rs:23:20
   |
23 |     let mut same = 0;
   |                    ^
   |
   = help: maybe it is overwritten before being read?
   = note: `#[warn(unused_assignments)]` (part of `#[warn(unused)]`) on by default
warning: 1 warning emitted
```
