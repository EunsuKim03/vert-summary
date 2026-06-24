# cpp_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR.rs`
- Emit source: `rust_funcs/cpp_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR/O0.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR_emit.rs:24:5
   |
24 |     (num - divisor * (num / divisor))
   |     ^                               ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
24 -     (num - divisor * (num / divisor))
24 +     num - divisor * (num / divisor)
   |
```

### O1

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR/O1.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR_emit.rs:24:5
   |
24 |     (num - divisor * (num / divisor))
   |     ^                               ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
24 -     (num - divisor * (num / divisor))
24 +     num - divisor * (num / divisor)
   |
```

### O2

- Status: ok
- IR: `rust_funcs/cpp_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR/O2.ll`
- Message:

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR/PROGRAM_TO_FIND_REMAINDER_WITHOUT_USING_MODULO_OR_OPERATOR_emit.rs:24:5
   |
24 |     (num - divisor * (num / divisor))
   |     ^                               ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
24 -     (num - divisor * (num / divisor))
24 +     num - divisor * (num / divisor)
   |
```
