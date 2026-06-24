# Rust Function LLVM IR Summary

- Output root: `rust_funcs/`
- Transcoder source preference: `out-rwasm-bolero`, fallback `out-rwasm-mutated`
- `out-rwasm-original` is excluded because it does not contain LLM output blocks.

| Suite | Benchmarks | CSV compile expected | LLVM IR OK | Missing LLM block | Failed | CSV compile expected but non-ok |
|---|---:|---:|---:|---:|---:|---:|
| `c_crown` | 14 | 0 | 7 | 0 | 7 | 0 |
| `c_transcoder` | 506 | 476 | 408 | 3 | 95 | 71 |
| `cpp_transcoder` | 569 | 515 | 394 | 4 | 171 | 122 |
| `go_transcoder` | 343 | 323 | 279 | 2 | 62 | 54 |
| **Total** | 1432 | 1314 | 1088 | 9 | 335 | 247 |
