# cpp_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK.rs`
- Emit source: `rust_funcs/cpp_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0061]: this method takes 1 argument but 2 arguments were supplied
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK_emit.rs:29:72
     |
  29 |         rotation += input_digit.min(unlock_code % 10, 10 - input_digit.min(unlock_code % 10, 10 - unlock_code % 10));
     |                                                                        ^^^                   --------------------- unexpected argument #2 of type `i32`
     |
note: method defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/cmp.rs:1060:8
     |
1060 |     fn min(self, other: Self) -> Self
     |        ^^^
help: remove the extra argument
```

### O1

- Status: failed
- Message:

```text
error[E0061]: this method takes 1 argument but 2 arguments were supplied
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK_emit.rs:29:72
     |
  29 |         rotation += input_digit.min(unlock_code % 10, 10 - input_digit.min(unlock_code % 10, 10 - unlock_code % 10));
     |                                                                        ^^^                   --------------------- unexpected argument #2 of type `i32`
     |
note: method defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/cmp.rs:1060:8
     |
1060 |     fn min(self, other: Self) -> Self
     |        ^^^
help: remove the extra argument
```

### O2

- Status: failed
- Message:

```text
error[E0061]: this method takes 1 argument but 2 arguments were supplied
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK_emit.rs:29:72
     |
  29 |         rotation += input_digit.min(unlock_code % 10, 10 - input_digit.min(unlock_code % 10, 10 - unlock_code % 10));
     |                                                                        ^^^                   --------------------- unexpected argument #2 of type `i32`
     |
note: method defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/cmp.rs:1060:8
     |
1060 |     fn min(self, other: Self) -> Self
     |        ^^^
help: remove the extra argument
```
