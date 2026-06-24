# c_transcoder/CEILING_IN_A_SORTED_ARRAY

- Kind: llm-output-block
- Status: ok
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- Source: `rust_funcs/c_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY.rs`
- Emit source: `rust_funcs/c_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs`
- CSV compile expected: True
- CSV duplicate rows: no
- CSV rows:
  - `CEILING_IN_A_SORTED_ARRAY, compile=1, bolero=1, bounded_kani=0, full_kani=0`

## LLVM IR emission

### O0

- Status: ok
- IR: `rust_funcs/c_transcoder/CEILING_IN_A_SORTED_ARRAY/O0.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:29:5
   |
24 | /     loop {
25 | |         if arr[i as usize] == x { return i; }
26 | |         if arr[i as usize] < x && arr[i as usize + 1] >= x { return i + 1; }
27 | |         i += 1;
28 | |     }
   | |_____- any code following this expression is unreachable
29 |       -1
   |       ^^ unreachable expression
   |
```

### O1

- Status: ok
- IR: `rust_funcs/c_transcoder/CEILING_IN_A_SORTED_ARRAY/O1.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:29:5
   |
24 | /     loop {
25 | |         if arr[i as usize] == x { return i; }
26 | |         if arr[i as usize] < x && arr[i as usize + 1] >= x { return i + 1; }
27 | |         i += 1;
28 | |     }
   | |_____- any code following this expression is unreachable
29 |       -1
   |       ^^ unreachable expression
   |
```

### O2

- Status: ok
- IR: `rust_funcs/c_transcoder/CEILING_IN_A_SORTED_ARRAY/O2.ll`
- Message:

```text
warning: unreachable expression
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:29:5
   |
24 | /     loop {
25 | |         if arr[i as usize] == x { return i; }
26 | |         if arr[i as usize] < x && arr[i as usize + 1] >= x { return i + 1; }
27 | |         i += 1;
28 | |     }
   | |_____- any code following this expression is unreachable
29 |       -1
   |       ^^ unreachable expression
   |
```
