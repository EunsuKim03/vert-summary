# Rust Syntax-like Failure Report

- Syntax-like failed benchmarks: 6
- Source: `rust_funcs/*/*/SUMMARY.md` O0 rustc errors
- Note: this report classifies parser/syntax-shaped failures only; type, borrow, lifetime, and semantic Rust errors remain in `FAILED.md`.

## Counts by suite

| Suite | Count |
|---|---:|
| `cpp_transcoder` | 6 |

## Counts by category

| Category | Count | c_transcoder | cpp_transcoder | go_transcoder |
|---|---:|---:|---:|---:|
| `delimiter-imbalance` | 4 | 0 | 4 | 0 |
| `c-style-for-loop` | 2 | 0 | 2 | 0 |

## Category notes

- `malformed-array-parameter`: common LLM pattern such as `arr: i32 [i32]`; most simple cases were repaired into Rust slices.
- `function-body-fragment`: extracted LLM block contains a body fragment but no usable `fn f_gold(...)` header.
- `delimiter-imbalance`: extra/missing closing braces or parentheses.
- `malformed-local-binding-or-array`: parser fails around local typed bindings or array expressions.
- `c-style-for-loop`: C-style `for init; cond; step` syntax remains and needs a control-flow rewrite.

## Benchmarks

### cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED

- Category: `c-style-for-loop`
- Source: `rust_funcs/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED.rs`
- Error: error: missing `in` in `for` loop; --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_emit.rs:26:14; |; 26 |    for front = 0; front < n; front += 1  {; |              ^; |; help: try using `in` here instead; |; 26 -    for front = 0; front < n; front += 1  {; 26 +    for front in 0; front < n; front += 1  {; |; error: expected `{`, found `;`

### cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1

- Category: `delimiter-imbalance`
- Source: `rust_funcs/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1.rs`
- Error: error: unexpected closing delimiter: `}`; --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1_emit.rs:42:1; |; 21 | fn f_gold(arr: &mut [i32], n: i32,  x: i32, y: i32) -> i32 {; |                                                            - this delimiter might not be properly closed...; ...; 40 |     }; |     - ...as it matches this but it has different indentation; 41 |     min_dist; 42 | }; | ^ unexpected closing delimiter; error: aborting due to 1 previous error

### cpp_transcoder/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION

- Category: `delimiter-imbalance`
- Source: `rust_funcs/cpp_transcoder/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION.rs`
- Error: error: unexpected closing delimiter: `}`; --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_emit.rs:62:1; |; 30 |         } else {; |                - this delimiter might not be properly closed...; ...; 33 |             } else {; |             - ...as it matches this but it has different indentation; ...; 62 | }; | ^ unexpected closing delimiter; error: aborting due to 1 previous error

### cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER

- Category: `delimiter-imbalance`
- Source: `rust_funcs/cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER.rs`
- Error: error: this file contains an unclosed delimiter; --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_emit.rs:53:3; |; 22 | fn f_gold (arr: Vec<f32>, n: i32, num: f32, max_limit: f32) -> i32 {; |                                                                    - unclosed delimiter; ...; 25 |     if dp[n as usize - 1][val as usize] > 0 {; |                                             - this delimiter might not be properly closed...; ...; 53 | }; | -^; | |

### cpp_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS

- Category: `c-style-for-loop`
- Source: `rust_funcs/cpp_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS.rs`
- Error: error: missing `in` in `for` loop; --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_emit.rs:27:15; |; 27 |     for count = 0; count <= n; count += 1 {; |               ^; |; help: try using `in` here instead; |; 27 -     for count = 0; count <= n; count += 1 {; 27 +     for count in 0; count <= n; count += 1 {; |; error: expected `{`, found `;`

### cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED

- Category: `delimiter-imbalance`
- Source: `rust_funcs/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED.rs`
- Error: error: unexpected closing delimiter: `}`; --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_emit.rs:46:1; |; 21 | fn f_gold(expr: String) -> i32 {; |                                - this opening brace...; ...; 45 | }; | - ...matches this closing brace; 46 | }; | ^ unexpected closing delimiter; error: aborting due to 1 previous error
