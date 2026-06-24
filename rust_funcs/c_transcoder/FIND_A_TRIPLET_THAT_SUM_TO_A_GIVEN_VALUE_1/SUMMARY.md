# c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `A:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1.rs`
- Emit source: `rust_funcs/c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0277]: the trait bound `f32: Ord` is not satisfied
   --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1_emit.rs:25:7
    |
 25 |     A.sort();
    |       ^^^^ the trait `Ord` is not implemented for `f32`
    |
    = help: the following other types implement trait `Ord`:
              i128
              i16
              i32
              i64
              i8
```

### O1

- Status: failed
- Message:

```text
error[E0277]: the trait bound `f32: Ord` is not satisfied
   --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1_emit.rs:25:7
    |
 25 |     A.sort();
    |       ^^^^ the trait `Ord` is not implemented for `f32`
    |
    = help: the following other types implement trait `Ord`:
              i128
              i16
              i32
              i64
              i8
```

### O2

- Status: failed
- Message:

```text
error[E0277]: the trait bound `f32: Ord` is not satisfied
   --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1_emit.rs:25:7
    |
 25 |     A.sort();
    |       ^^^^ the trait `Ord` is not implemented for `f32`
    |
    = help: the following other types implement trait `Ord`:
              i128
              i16
              i32
              i64
              i8
```
