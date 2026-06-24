# cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1

- Kind: llm-output-block
- Status: failed
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1.rs`
- Emit source: `rust_funcs/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1_emit.rs`
- CSV compile expected: False
- CSV duplicate rows: no
- CSV rows:
  - `FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1, compile=0, bolero=0, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: failed
- Message:

```text
error: unexpected closing delimiter: `}`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1_emit.rs:42:1
   |
21 | fn f_gold(arr: &mut [i32], n: i32,  x: i32, y: i32) -> i32 {
   |                                                            - this delimiter might not be properly closed...
...
40 |     }
   |     - ...as it matches this but it has different indentation
41 |     min_dist
42 | }
   | ^ unexpected closing delimiter
error: aborting due to 1 previous error
```

### O1

- Status: failed
- Message:

```text
error: unexpected closing delimiter: `}`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1_emit.rs:42:1
   |
21 | fn f_gold(arr: &mut [i32], n: i32,  x: i32, y: i32) -> i32 {
   |                                                            - this delimiter might not be properly closed...
...
40 |     }
   |     - ...as it matches this but it has different indentation
41 |     min_dist
42 | }
   | ^ unexpected closing delimiter
error: aborting due to 1 previous error
```

### O2

- Status: failed
- Message:

```text
error: unexpected closing delimiter: `}`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1_emit.rs:42:1
   |
21 | fn f_gold(arr: &mut [i32], n: i32,  x: i32, y: i32) -> i32 {
   |                                                            - this delimiter might not be properly closed...
...
40 |     }
   |     - ...as it matches this but it has different indentation
41 |     min_dist
42 | }
   | ^ unexpected closing delimiter
error: aborting due to 1 previous error
```
