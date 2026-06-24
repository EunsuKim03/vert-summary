# c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND.rs`
- Emit source: `rust_funcs/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `h`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:25:20
   |
25 |     if h == 12.0 { h = 0.0; }
   |                    ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut h: f32, m: f32) -> i32 {
   |           +++
error[E0384]: cannot assign to immutable argument `m`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:26:20
```

### O1

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `h`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:25:20
   |
25 |     if h == 12.0 { h = 0.0; }
   |                    ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut h: f32, m: f32) -> i32 {
   |           +++
error[E0384]: cannot assign to immutable argument `m`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:26:20
```

### O2

- Status: failed
- Message:

```text
error[E0384]: cannot assign to immutable argument `h`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:25:20
   |
25 |     if h == 12.0 { h = 0.0; }
   |                    ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut h: f32, m: f32) -> i32 {
   |           +++
error[E0384]: cannot assign to immutable argument `m`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:26:20
```
