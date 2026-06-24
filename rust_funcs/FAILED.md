# Rust Function LLVM IR Failures

- Non-ok benchmarks: 344

## c_crown/0001_avl_rotate

- Status: failed
- CSV compile expected: False
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/c_crown/0001_avl_rotate/0001_avl_rotate_emit.rs:27:14
    |
 27 |     Box::new(x)
    |     -------- ^ expected `Node`, found `Box<Node>`
    |     |
    |     arguments to this function are incorrect
    |
    = note: expected struct `Node`
               found struct `Box<Node>`
note: associated function defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/boxed.rs:264:12
```


## c_crown/0003_avl_insert

- Status: failed
- CSV compile expected: unknown
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0596]: cannot borrow `n.right` as mutable, as `n` is not declared as mutable
  --> /root/es/vert/vert/rust_funcs/c_crown/0003_avl_insert/0003_avl_insert_emit.rs:28:14
   |
28 |         Some(n) => {
   |              ^ not mutable
29 |             if key < n.key {
30 |                 n.left = insert(n.left.take(), key);
   |                                 ------ cannot borrow as mutable
31 |             } else {
32 |                 n.right = insert(n.right.take(), key);
   |                                  ------- cannot borrow as mutable
   |
```


## c_crown/0007_libcsv_get_opts

- Status: failed
- CSV compile expected: unknown
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0599]: no method named `is_null` found for reference `&CsvParser` in the current scope
  --> /root/es/vert/vert/rust_funcs/c_crown/0007_libcsv_get_opts/0007_libcsv_get_opts_emit.rs:30:15
   |
30 |     if parser.is_null() {
   |               ^^^^^^^ method not found in `&CsvParser`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_crown/0007_libcsv_get_opts/0007_libcsv_get_opts_emit.rs:33:5
   |
29 | fn csv_get_opts(parser: &CsvParser) -> i32 {
   |                                        --- expected `i32` because of return type
...
33 |     parser.options
```


## c_crown/0009_url

- Status: failed
- CSV compile expected: unknown
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0106]: missing lifetime specifier
  --> /root/es/vert/vert/rust_funcs/c_crown/0009_url/0009_url_emit.rs:31:58
   |
31 | fn get_part(url: &str, format: &str, l: usize) -> Option<&str> {
   |                  ----          ----                      ^ expected named lifetime parameter
   |
   = help: this function's return type contains a borrowed value, but the signature does not say whether it is borrowed from `url` or `format`
help: consider introducing a named lifetime parameter
   |
31 | fn get_part<'a>(url: &'a str, format: &'a str, l: usize) -> Option<&'a str> {
   |            ++++       ++               ++                           ++
error[E0425]: cannot find function `url_get_path` in this scope
```


## c_crown/0010_avl_delete

- Status: failed
- CSV compile expected: unknown
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0599]: the method `to_owned` exists for mutable reference `&mut Node`, but its trait bounds were not satisfied
  --> /root/es/vert/vert/rust_funcs/c_crown/0010_avl_delete/0010_avl_delete_emit.rs:43:24
   |
11 | struct Node {
   | ----------- doesn't satisfy `Node: Clone` or `Node: ToOwned`
...
43 |     y.left = Some(node.to_owned());
   |                        ^^^^^^^^ method cannot be called on `&mut Node` due to unsatisfied trait bounds
   |
   = note: the following trait bounds were not satisfied:
           `&mut Node: Clone`
           which is required by `&mut Node: ToOwned`
```


## c_crown/0011_brotli_filesize

- Status: failed
- CSV compile expected: unknown
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible; added std::io::Seek import
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_crown/0011_brotli_filesize/0011_brotli_filesize_emit.rs:18:5
   |
14 | fn file_size(path: &str) -> i64 {
   |                             --- expected `i64` because of return type
...
18 |     size
   |     ^^^^ expected `i64`, found `u64`
   |
help: you can convert a `u64` to an `i64` and panic if the converted value doesn't fit
   |
18 |     size.try_into().unwrap()
```


## c_crown/0012_buffer_resize

- Status: failed
- CSV compile expected: unknown
- Source note: copied non-rwasm Rust crate; implementation source selected instead of template lib.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0658]: use of unstable library feature `allocator_api`
  --> /root/es/vert/vert/rust_funcs/c_crown/0012_buffer_resize/0012_buffer_resize_emit.rs:18:50
   |
18 |     fn resize(&mut self, n: usize) -> Result<(), std::alloc::AllocError> {
   |                                                  ^^^^^^^^^^^^^^^^^^^^^^
   |
   = note: see issue #32838 <https://github.com/rust-lang/rust/issues/32838> for more information
error[E0658]: use of unstable library feature `allocator_api`
  --> /root/es/vert/vert/rust_funcs/c_crown/0012_buffer_resize/0012_buffer_resize_emit.rs:26:65
   |
26 |     fn append_n(&mut self, str: &str, len: usize) -> Result<(), std::alloc::AllocError> {
   |                                                                 ^^^^^^^^^^^^^^^^^^^^^^
```


## c_transcoder/BINARY_SEARCH

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/BINARY_SEARCH/BINARY_SEARCH_emit.rs:24:16
    |
 24 |         if arr[mid] == x {return mid as i32;}
    |                ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

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


## c_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_emit.rs:29:5
   |
23 | fn f_gold(str: &str) -> i32 {
   |                         --- expected `i32` because of return type
...
29 |     sum == n as i32 - 1 || sum == 1
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_GIVEN_CIRCLE_LIES_COMPLETELY_INSIDE_RING_FORMED_TWO_CONCENTRIC_CIRCLES

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_GIVEN_CIRCLE_LIES_COMPLETELY_INSIDE_RING_FORMED_TWO_CONCENTRIC_CIRCLES/CHECK_GIVEN_CIRCLE_LIES_COMPLETELY_INSIDE_RING_FORMED_TWO_CONCENTRIC_CIRCLES_emit.rs:28:5
   |
22 | fn f_gold(r: i32, R: i32, r1: i32, x1: i32, y1: i32) -> i32 {
   |                                                         --- expected `i32` because of return type
...
28 |     dis - r1 >= R && dis + r1 <= r
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:23:16
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |     if x == 1 {
23 |         return y == 1;
   |                ^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:29:5
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
```


## c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1_emit.rs:25:5
   |
22 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
...
25 |     res1 == res2
   |     ^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT_emit.rs:29:5
   |
21 | fn f_gold(str: &str) -> i32 {
   |                         --- expected `i32` because of return type
...
29 |     (odd_dig_sum - even_dig_sum) % 11 == 0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT_emit.rs:26:6
   |
21 | fn f_gold(str : &str) -> i32 {
   |                          --- expected `i32` because of return type
...
26 |      digit_sum % 3 == 0
   |      ^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:27:16
   |
23 | fn f_gold(str : &str) -> i32 {
   |                          --- expected `i32` because of return type
...
27 |         return (str.chars().nth(0).unwrap() as u8 - b'0') % 4 == 0;
   |                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT_emit.rs:31:5
   |
22 | fn f_gold(str: &str) -> i32 {
   |                         --- expected `i32` because of return type
...
31 |     digit_sum % 3.0 == 0.0
   |     ^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT_emit.rs:26:5
   |
26 |     (digit_sum % 9 == 0)
   |     ^                  ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -     (digit_sum % 9 == 0)
26 +     digit_sum % 9 == 0
   |
```


## c_transcoder/CHECK_LINE_PASSES_ORIGIN

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_LINE_PASSES_ORIGIN/CHECK_LINE_PASSES_ORIGIN_emit.rs:26:5
   |
21 | fn f_gold(x1: i32, y1: i32, x2: i32, y2: i32) -> i32 {
   |                                                  --- expected `i32` because of return type
...
26 |     x1 * (y2 - y1) == y1 * (x2 - x1)
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_emit.rs:32:16
   |
32 |             if one_seen {
   |                ^^^^^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER

- Status: missing-llm
- CSV compile expected: False
- Source note: missing LLM output block
- O0: failed

```text
no emit source
```


## c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_emit.rs:28:16
   |
28 |             if dp[i][j] {
   |                ^^^^^^^^ expected `bool`, found integer
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_emit.rs:29:32
    |
 29 |                 if j < m && s1[i].to_uppercase() == s2[j] {
    |                                ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
```


## c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs:21:25
   |
20 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
21 |     if n == 1.0 {return 1.0;}
   |                         ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs:39:5
   |
20 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
```


## c_transcoder/CHECK_WHETHER_GIVEN_DEGREES_VERTICES_REPRESENT_GRAPH_TREE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_WHETHER_GIVEN_DEGREES_VERTICES_REPRESENT_GRAPH_TREE/CHECK_WHETHER_GIVEN_DEGREES_VERTICES_REPRESENT_GRAPH_TREE_emit.rs:26:5
   |
21 | fn f_gold(degree: [i32;2], n: i32) -> i32 {
   |                                       --- expected `i32` because of return type
...
26 |     (2 * (n - 1)) == deg_sum
   |     ^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_emit.rs:22:5
   |
21 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
22 |     n % 2 == 0
   |     ^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1_emit.rs:22:5
   |
21 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
22 |     n % 2 == 0
   |     ^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed `[T; n: Ty]` parameter to slice plus size parameter; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0255]: the name `min` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/c_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:19:5
   |
 9 | fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
   | ----------------------------- previous definition of the value `min` here
...
19 | use std::cmp::min;
   |     ^^^^^^^^^^^^^ `min` reimported here
   |
   = note: `min` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```


## c_transcoder/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/c_transcoder/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES_emit.rs:22:27
     |
  22 |     let mut LIS = vec![1; n];
     |                   --------^-
     |                   |       |
     |                   |       expected `usize`, found `u32`
     |                   arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## c_transcoder/COUNT_NUMBER_OF_OCCURRENCES_OR_FREQUENCY_IN_A_SORTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_NUMBER_OF_OCCURRENCES_OR_FREQUENCY_IN_A_SORTED_ARRAY/COUNT_NUMBER_OF_OCCURRENCES_OR_FREQUENCY_IN_A_SORTED_ARRAY_emit.rs:29:5
   |
22 | fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
29 |     res
   |     ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2_emit.rs:38:5
   |
23 | fn f_gold (arr1: Vec<f32>, arr2: Vec<f32>, m: f32, n: f32, x: f32) -> i32 {
   |                                                                       --- expected `i32` because of return type
...
38 |     count
   |     ^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:42:36
   |
42 |             if str[i] == str[j] && P[i+1][j-1] {
   |                ----------------    ^^^^^^^^^^^ expected `bool`, found integer
   |                |
   |                expected because this is `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:45:16
   |
45 |             if P[i][j] {
   |                ^^^^^^^ expected `bool`, found integer
```


## c_transcoder/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N_emit.rs:28:23
   |
28 |             ans += if k {1} else {0};
   |                       ^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS_emit.rs:22:5
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |     x ^ y < 0
   |     ^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_emit.rs:30:20
    |
 30 |         return val[n as u32 - 1] + f_gold(W - wt[n as u32 - 1], wt, val, n - 1).max(f_gold(W, wt, val, n - 1));
    |                    ^^^^^^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1_emit.rs:28:9
   |
28 |         n -= 3;
   |         ^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
22 | fn f_gold(mut n: i32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:23:24
   |
22 | fn f_gold(p: &[f32;2], i: u32, j: u32) -> i32  {
   |                                           --- expected `i32` because of return type
23 |     if i == j { return 0.0; }
   |                        ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:27:65
    |
 27 |         let count =   f_gold(p, i, k) + f_gold(p, k + 1, j) + p[i - 1] * p[k] * p[j];
    |                                                                 ^^^^^ slice indices are of type `usize` or ranges of `usize`
```


## c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:50
   |
35 | ...   subset[i as usize][j as usize] = subset[i as usize - 1][j as usize] || subset[i as usize - 1][(j - set[i as usize - 1]) as usize];
   |                                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:88
   |
35 | ...e - 1][j as usize] || subset[i as usize - 1][(j - set[i as usize - 1]) as usize];
   |                          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:35:50
```


## c_transcoder/EFFICIENT_WAY_CHECK_WHETHER_N_TH_FIBONACCI_NUMBER_MULTIPLE_10

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/EFFICIENT_WAY_CHECK_WHETHER_N_TH_FIBONACCI_NUMBER_MULTIPLE_10/EFFICIENT_WAY_CHECK_WHETHER_N_TH_FIBONACCI_NUMBER_MULTIPLE_10_emit.rs:22:5
   |
21 |  fn f_gold(n: i32) -> i32 {
   |                       --- expected `i32` because of return type
22 |     (n as f32) % 15.0 == 0.0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit.rs:26:16
    |
 26 |         if arr[i] != arr[i+1] && arr[i] != arr[i+1] - 1  {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM_emit.rs:32:5
   |
21 | fn f_gold(a: u32, b: u32) -> u32 {
   |                              --- expected `u32` because of return type
...
32 |     res
   |     ^^^ expected `u32`, found `usize`
   |
help: you can convert a `usize` to a `u32` and panic if the converted value doesn't fit
   |
32 |     res.try_into().unwrap()
```


## c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:25:20
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
...
25 |             return i;
   |                    ^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:29:5
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
```


## c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:24:46
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
...
24 |         if mid == arr[mid as usize] { return mid; }
   |                                              ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:31:5
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
```


## c_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `A:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

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


## c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs:27:20
   |
23 | fn f_gold(mut arr: [f32;2], mut left: f32, mut right: f32) -> i32 {
   |                                                               --- expected `i32` because of return type
...
27 |             return mid;
   |                    ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs:35:5
   |
23 | fn f_gold(mut arr: [f32;2], mut left: f32, mut right: f32) -> i32 {
```


## c_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1_emit.rs:34:5
   |
21 | fn f_gold(arr1: &[f32;2], arr2: &[f32;2]) -> i32 {
   |                                              --- expected `i32` because of return type
...
34 |     index
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
34 |     index.try_into().unwrap()
```


## c_transcoder/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_emit.rs:28:24
    |
 28 |         sum1 += stack1[i];
    |                        ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: u32, high: u32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if high < low {
24 |         return arr[0];
   |                ^^^^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:27:20
    |
 27 |         return arr[low];
```


## c_transcoder/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE_emit.rs:30:16
   |
30 |     while i <= (n as f32).sqrt()  {
   |                ^^^^^^^^^^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE_emit.rs:30:13
   |
30 |     while i <= (n as f32).sqrt()  {
   |             ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```


## c_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:18
   |
26 |     while i*i <= num as f32  {
   |                  ^^^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:15
   |
26 |     while i*i <= num as f32  {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```


## c_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if low > high {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if high < low {
24 |         return 0.0;
   |                ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER/FIND_SUM_EVEN_FACTORS_NUMBER_emit.rs:35:13
   |
35 |             n /= i as i32;
   |             ^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
25 | fn f_gold(mut n: i32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## c_transcoder/FIND_THE_MAXIMUM_ELEMENT_IN_AN_ARRAY_WHICH_IS_FIRST_INCREASING_AND_THEN_DECREASING

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_THE_MAXIMUM_ELEMENT_IN_AN_ARRAY_WHICH_IS_FIRST_INCREASING_AND_THEN_DECREASING/FIND_THE_MAXIMUM_ELEMENT_IN_AN_ARRAY_WHICH_IS_FIRST_INCREASING_AND_THEN_DECREASING_emit.rs:29:5
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
...
29 |     max
   |     ^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_emit.rs:26:28
   |
21 | fn f_gold(a1: [f32;2], a2: [f32;2], a3: [f32;2], n1: f32, n2: f32, n3: f32, sum: f32) -> i32 {
   |                                                                                          --- expected `i32` because of return type
...
26 |                     return 1.0;
   |                            ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_emit.rs:31:5
   |
21 | fn f_gold(a1: [f32;2], a2: [f32;2], a3: [f32;2], n1: f32, n2: f32, n3: f32, sum: f32) -> i32 {
```


## c_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1_emit.rs:25:13
   |
25 |             n >>= 1;
   |             ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## c_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2_emit.rs:23:5
   |
22 | fn f_gold(n: u32) -> i32 {
   |                      --- expected `i32` because of return type
23 |     n != 0 && ((n & (n - 1)) == 0) && n & 0xAAAAAAAA == 0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/FIND_WHETHER_GIVEN_INTEGER_POWER_3_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FIND_WHETHER_GIVEN_INTEGER_POWER_3_NOT/FIND_WHETHER_GIVEN_INTEGER_POWER_3_NOT_emit.rs:25:12
   |
22 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
25 |     return x == 0f32;
   |            ^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
   |                                                         --- expected `i32` because of return type
22 |     if low > high {
23 |         return -1.;
   |                ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/HARDY_RAMANUJAN_THEOREM

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:18
   |
31 |     while i*i <= n as f32 {
   |                  ^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:15
   |
31 |     while i*i <= n as f32 {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```


## c_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_emit.rs:26:12
    |
 26 |     if arr[i] >= arr[2 * i + 1] && arr[i] >= arr[2 * i + 2] &&
    |            ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/K_TH_DIGIT_RAISED_POWER_B

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_emit.rs:23:23
    |
 23 |     let mut p = a.pow(b);
    |                   --- ^ expected `u32`, found `i32`
    |                   |
    |                   arguments to this method are incorrect
    |
note: method defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/mod.rs:295:5
    |
295 | /     int_impl! {
```


## c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:33:20
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
   |                                            --- expected `i32` because of return type
...
33 |             return arr[i];
   |                    ^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:36:1
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
```


## c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs:47:5
   |
22 | fn f_gold(arr1: [f32;2], arr2: [f32;2], m: i32, n: i32, k: i32) -> i32 {
   |                                                                    --- expected `i32` because of return type
...
47 |     sorted1[k as usize - 1]
   |     ^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the trait bound `f32: From<i32>` is not satisfied
  --> /root/es/vert/vert/rust_funcs/c_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER/K_TH_PRIME_FACTOR_GIVEN_NUMBER_emit.rs:29:20
   |
29 |     while i * i <= f32::from(n)  {
   |                    ^^^ the trait `From<i32>` is not implemented for `f32`
   |
   = help: the following other types implement trait `From<T>`:
             `f32` implements `From<bool>`
             `f32` implements `From<i16>`
             `f32` implements `From<i8>`
             `f32` implements `From<u16>`
             `f32` implements `From<u8>`
```


## c_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/c_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_emit.rs:24:32
     |
  24 |     let mut lcs = vec![vec![0; m + 1]; n + 1];
     |                        --------^^^^^-
     |                        |       |
     |                        |       expected `usize`, found `i32`
     |                        arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## c_transcoder/LOWER_INSERTION_POINT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-mutated/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:25:23
    |
 25 |     } else if x > arr[n-1]  {
    |                       ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/MAXIMUM_EQULIBRIUM_SUM_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_EQULIBRIUM_SUM_ARRAY/MAXIMUM_EQULIBRIUM_SUM_ARRAY_emit.rs:24:34
    |
 24 |         let mut prefix_sum = arr[i];
    |                                  ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/MAXIMUM_NUMBER_OF_SQUARES_THAT_CAN_BE_FIT_IN_A_RIGHT_ANGLE_ISOSCELES_TRIANGLE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_NUMBER_OF_SQUARES_THAT_CAN_BE_FIT_IN_A_RIGHT_ANGLE_ISOSCELES_TRIANGLE/MAXIMUM_NUMBER_OF_SQUARES_THAT_CAN_BE_FIT_IN_A_RIGHT_ANGLE_ISOSCELES_TRIANGLE_emit.rs:30:5
   |
29 | fn f_gold(b: f32, m: f32) -> i32 {
   |                              --- expected `i32` because of return type
30 |     (b/m - 1.0) * (b/m) / 2.0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32;2]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_emit.rs:28:20
    |
 28 |             if arr[i] == arr[j] {
    |                    ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/MAXIMUM_PRODUCT_SUBSET_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_PRODUCT_SUBSET_ARRAY/MAXIMUM_PRODUCT_SUBSET_ARRAY_emit.rs:29:14
    |
 29 |         if a[i] == 0 {
    |              ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_emit.rs:31:5
   |
22 |  fn f_gold(price: [f32;2], n: f32, k: f32) -> i32 {
   |                                               --- expected `i32` because of return type
...
31 |     profit[k as usize][n as usize-1]
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs:25:49
   |
25 |     if n > 2 {sum[2] = max(sum[1], max(arr[1] + arr[2], arr[0] + arr[2]));}
   |                                                 ^^^^^^ index out of bounds: the length is 2 but the index is 2
   |
   = note: `#[deny(unconditional_panic)]` on by default
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs:25:66
   |
25 |     if n > 2 {sum[2] = max(sum[1], max(arr[1] + arr[2], arr[0] + arr[2]));}
   |                                                                  ^^^^^^ index out of bounds: the length is 2 but the index is 2
```


## c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_emit.rs:29:14
   |
29 |     dec[0] = inc[0] = arr[0];
   |     ------   ^^^^^^^^^^^^^^^ expected integer, found `()`
   |     |
   |     expected due to the type of this binding
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_emit.rs:33:20
    |
 33 |             if arr[j] > arr[i] {
    |                    ^ slice indices are of type `usize` or ranges of `usize`
```


## c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2/MAXIMUM_TRIPLET_SUM_ARRAY_2_emit.rs:37:5
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
...
37 |     max_a + max_b + max_c
   |     ^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_emit.rs:23:16
   |
23 | fn f_gold(ar1: [i32], ar2: [i32], n: i32) -> i32 {
   |                ^^^^^ doesn't have a size known at compile-time
   |
   = help: the trait `Sized` is not implemented for `[i32]`
help: function arguments must have a statically known size, borrowed slices always have a known size
   |
23 | fn f_gold(ar1: &[i32], ar2: [i32], n: i32) -> i32 {
   |                +
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
```


## c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_INSERTIONS_SORT_ARRAY/MINIMUM_INSERTIONS_SORT_ARRAY_emit.rs:39:5
   |
39 |     (N - max)
   |     ^       ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
39 -     (N - max)
39 +     N - max
   |
```


## c_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1_emit.rs:34:29
    |
 34 |             curr_sum += arr[end];
    |                             ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_emit.rs:25:43
   |
25 |   if n == 3 {return arr[0].min(arr[1].min(arr[2]));}
   |                                           ^^^^^^ index out of bounds: the length is 2 but the index is 2
   |
   = note: `#[deny(unconditional_panic)]` on by default
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/c_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_emit.rs:26:44
   |
26 |   if n == 4 {return arr[0].min(arr[1]).min(arr[2].min(arr[3]));}
   |                                            ^^^^^^ index out of bounds: the length is 2 but the index is 2
```


## c_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT_emit.rs:27:5
   |
21 | fn f_gold( mut n: i32 ) -> i32 {
   |                            --- expected `i32` because of return type
...
27 |     n % 29 == 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[{integer}]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_emit.rs:26:11
    |
 26 |     dp[0][(str.chars().nth(0).unwrap() as u32 - '0' as u32) % n as u32] += 1;
    |           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[{integer}]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/POSSIBLE_TO_MAKE_A_DIVISIBLE_BY_3_NUMBER_USING_ALL_DIGITS_IN_AN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/POSSIBLE_TO_MAKE_A_DIVISIBLE_BY_3_NUMBER_USING_ALL_DIGITS_IN_AN_ARRAY/POSSIBLE_TO_MAKE_A_DIVISIBLE_BY_3_NUMBER_USING_ALL_DIGITS_IN_AN_ARRAY_emit.rs:26:5
   |
21 | fn f_gold(arr: &[i32;2], n: i32) -> i32 {
   |                                     --- expected `i32` because of return type
...
26 |     remainder == 0
   |     ^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/PROGRAMMING_PUZZLE_ASSIGN_VALUE_WITHOUT_CONTROL_STATEMENT

- Status: missing-llm
- CSV compile expected: False
- Source note: missing LLM output block
- O0: failed

```text
no emit source
```


## c_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_emit.rs:26:12
    |
 26 |     if arr[n-1] < arr[n-2] {
    |            ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_emit.rs:34:5
   |
21 | fn f_gold(x: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
34 |     sum == temp
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING

- Status: missing-llm
- CSV compile expected: False
- Source note: missing LLM output block
- O0: failed

```text
no emit source
```


## c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
warning: unnecessary parentheses around `if` condition
  --> /root/es/vert/vert/rust_funcs/c_transcoder/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY/RECURSIVE_C_PROGRAM_LINEARLY_SEARCH_ELEMENT_GIVEN_ARRAY_emit.rs:23:8
   |
23 |     if (r < l) {
   |        ^     ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
23 -     if (r < l) {
23 +     if r < l {
   |
```


## c_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs:25:17
    |
 25 |         s += (a[i] + b[i]) as f32;
    |                 ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/SEARCH_ALMOST_SORTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SEARCH_ALMOST_SORTED_ARRAY/SEARCH_ALMOST_SORTED_ARRAY_emit.rs:25:20
   |
21 | fn f_gold(arr: [f32;2], l: f32, r: f32, x: f32) -> i32 {
   |                                                    --- expected `i32` because of return type
...
25 |             return mid;
   |                    ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SEARCH_ALMOST_SORTED_ARRAY/SEARCH_ALMOST_SORTED_ARRAY_emit.rs:38:5
   |
21 | fn f_gold(arr: [f32;2], l: f32, r: f32, x: f32) -> i32 {
```


## c_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_emit.rs:27:12
    |
 27 |     if arr[mid] == key {
    |            ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32, key: f32) -> i32 {
   |                                                           --- expected `i32` because of return type
23 |     if high < low {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:31:23
   |
31 |         return f_gold(&arr, mid + 1.0, high, key);
```


## c_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `a:i32 [f32]`; repaired malformed array parameter `b:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0433]: failed to resolve: use of undeclared type `Ordering`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:35:18
   |
35 |             Some(Ordering::Less) => i += 1,
   |                  ^^^^^^^^ use of undeclared type `Ordering`
   |
help: consider importing one of these enums
   |
19 + use std::cmp::Ordering;
   |
19 + use std::sync::atomic::Ordering;
   |
```


## c_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/c_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY/SMALLEST_SUM_CONTIGUOUS_SUBARRAY_emit.rs:25:59
    |
 25 |         if min_ending_here > 0.0  { min_ending_here = arr[i]; }
    |                                                           ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0317]: `if` may be missing an `else` clause
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS/SPLIT_N_MAXIMUM_COMPOSITE_NUMBERS_emit.rs:38:5
   |
21 |   fn f_gold(n: i32) -> i32 {
   |                        --- expected `i32` because of this return type
...
38 | /     if rem == 3 {
39 | |         if n < 15 {
40 | |             return -1;
...  |
43 | |     }
   | |_____^ expected `i32`, found `()`
```


## c_transcoder/SUBSET_SUM_DIVISIBLE_M

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_emit.rs:29:16
   |
29 |             if dp[j as usize] {
   |                ^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_emit.rs:36:16
   |
36 |             if temp[j as usize] {
   |                ^^^^^^^^^^^^^^^^ expected `bool`, found integer
error: aborting due to 2 previous errors
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:56
   |
30 | ... 2][j as usize] = subset[((i + 1) as usize) % 2][(j - arr[i as usize - 1]) as usize] || subset[((i + 1) as usize) % 2][j as usize];
   |                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:126
   |
30 | ...i as usize - 1]) as usize] || subset[((i + 1) as usize) % 2][j as usize];
   |                                  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:56
```


## c_transcoder/SUM_FACTORS_NUMBER_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: cast cannot be followed by a method call
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:23:16
   |
23 |     while i <= n as f32.sqrt() {
   |                ^^^^^^^^
   |
help: try surrounding the expression in parentheses
   |
23 |     while i <= (n as f32).sqrt() {
   |                +        +
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:27:13
```


## c_transcoder/SUM_PAIRWISE_PRODUCTS_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_emit.rs:37:5
   |
36 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
37 |     (n as f32 * (n + 1) as f32 * (n + 2) as f32 * (3 * n + 1) as f32) / 24.0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_emit.rs:26:12
   |
26 |         if sign {
   |            ^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:22:25
   |
22 | fn f_gold(n:i32, a:[i32;n as u32]) -> i32 {
   |           -             ^
   |           |
   |           this would need to be a `const`
error[E0277]: cannot multiply `{integer}` by `f32`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:29:11
   |
29 |     (sum) * (n as f32) / ((2*n-1) as f32) as i32
   |           ^ no implementation for `{integer} * f32`
```


## c_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS_emit.rs:26:5
   |
22 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
26 |     result as u64
   |     ^^^^^^^^^^^^^ expected `i32`, found `u64`
   |
help: you can convert a `u64` to an `i32` and panic if the converted value doesn't fit
   |
26 |     (result as u64).try_into().unwrap()
```


## c_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/c_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs:27:5
   |
21 | fn f_gold(x: u32, p1: u32, p2: u32, n: u32) -> i32 {
   |                                                --- expected `i32` because of return type
...
27 |     result
   |     ^^^^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
27 |     result.try_into().unwrap()
```


## c_transcoder/TEMPLE_OFFERINGS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/c_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:16
   |
26 |             if temple_height[j] < temple_height[j + 1] {
   |                ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/c_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:35
   |
26 |             if temple_height[j] < temple_height[j + 1] {
   |                                   ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/c_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:33:16
```


## c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_emit.rs:24:23
   |
23 | fn f_gold(n: i32) -> i32 {
   |           - this would need to be a `const`
24 |     let mut dp = [[0; n as usize + 1]; 10];
   |                       ^
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0435`.
```


## c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0252]: the name `i32` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/c_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs:21:5
   |
20 | use std::i32;
   |     -------- previous import of the module `i32` here
21 | use std::i32;
   |     ^^^^^^^^ `i32` reimported here
   |
   = note: `i32` must be defined only once in the type namespace of this module
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0252`.
```


## c_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/c_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER_emit.rs:25:9
   |
25 |         n = n & (n - 1);
   |         ^^^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## cpp_transcoder/BINARY_SEARCH

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/BINARY_SEARCH/BINARY_SEARCH_emit.rs:24:16
    |
 24 |         if arr[mid] == x {
    |                ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `h`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:26:9
   |
26 |         h = 0.0;
   |         ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut h: f32, m: f32) -> i32 {
   |           +++
error[E0384]: cannot assign to immutable argument `m`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:29:9
```


## cpp_transcoder/CEILING_IN_A_SORTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:24:16
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
   |                                                         --- expected `i32` because of return type
...
24 |         return low;
   |                ^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CEILING_IN_A_SORTED_ARRAY/CEILING_IN_A_SORTED_ARRAY_emit.rs:34:5
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
```


## cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_emit.rs:27:12
   |
21 | fn f_gold(str: String) -> i32 {
   |                           --- expected `i32` because of return type
...
27 |     return sum == n as u32 - 1 || sum == 1;
   |            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_emit.rs:25:12
   |
25 |     if m > n {
   |        -   ^ expected `usize`, found `u32`
   |        |
   |        expected because this is `usize`
   |
help: you can convert a `u32` to a `usize` and panic if the converted value doesn't fit
   |
25 |     if m > n.try_into().unwrap() {
   |             ++++++++++++++++++++
```


## cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0369]: cannot subtract `char` from `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_emit.rs:37:47
   |
37 |         group += (num.chars().nth(i).unwrap() - '0') as f32 * 100.0;
   |                   --------------------------- ^ --- char
   |                   |
   |                   char
error[E0369]: cannot subtract `char` from `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_DIVISIBILITY_LARGE_NUMBER_999/CHECK_DIVISIBILITY_LARGE_NUMBER_999_emit.rs:38:51
   |
38 |         group += (num.chars().nth(i + 1).unwrap() - '0') as f32 * 10.0;
   |                   ------------------------------- ^ --- char
```


## cpp_transcoder/CHECK_IF_A_GIVEN_ARRAY_CAN_REPRESENT_PREORDER_TRAVERSAL_OF_BINARY_SEARCH_TREE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_IF_A_GIVEN_ARRAY_CAN_REPRESENT_PREORDER_TRAVERSAL_OF_BINARY_SEARCH_TREE/CHECK_IF_A_GIVEN_ARRAY_CAN_REPRESENT_PREORDER_TRAVERSAL_OF_BINARY_SEARCH_TREE_emit.rs:27:16
    |
 27 |         if pre[i] < root{
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:22:21
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |    if x == 1{return y == 1;}
   |                     ^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:25:4
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
```


## cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT_emit.rs:28:5
   |
22 | fn f_gold(str: String) -> i32 {
   |                           --- expected `i32` because of return type
...
28 |     digit_sum % 3 == 0
   |     ^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:24:23
   |
21 | fn f_gold(str: String) -> i32 {
   |                           --- expected `i32` because of return type
...
24 |     if n == 1 {return (str.chars().nth(0).unwrap() as i32 - '0' as i32) % 4 == 0}
   |                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:27:5
   |
21 | fn f_gold(str: String) -> i32 {
```


## cpp_transcoder/CHECK_LINE_PASSES_ORIGIN

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_LINE_PASSES_ORIGIN/CHECK_LINE_PASSES_ORIGIN_emit.rs:23:5
   |
22 | fn f_gold(x1: i32, y1: i32, x2: i32, y2: i32) -> i32 {
   |                                                  --- expected `i32` because of return type
23 |     x1 * (y2 - y1) == y1 * (x2 - x1)
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_emit.rs:33:16
   |
33 |             if one_seen {
   |                ^^^^^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/CHECK_POSSIBLE_SORT_ARRAY_CONDITIONAL_SWAPPING_ADJACENT_ALLOWED

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_POSSIBLE_SORT_ARRAY_CONDITIONAL_SWAPPING_ADJACENT_ALLOWED/CHECK_POSSIBLE_SORT_ARRAY_CONDITIONAL_SWAPPING_ADJACENT_ALLOWED_emit.rs:24:16
    |
 24 |         if arr[i] > arr[i+1] {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER/CHECK_POSSIBLE_TRANSFORM_ONE_STRING_ANOTHER_emit.rs:29:39
    |
 29 |                 if j < s2.len() && s1[i].to_uppercase() == s2[j] {
    |                                       ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: missing `in` in `for` loop
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_emit.rs:26:14
   |
26 |    for front = 0; front < n; front += 1  {
   |              ^
   |
help: try using `in` here instead
   |
26 -    for front = 0; front < n; front += 1  {
26 +    for front in 0; front < n; front += 1  {
   |
error: expected `{`, found `;`
```


## cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1/CHECK_REVERSING_SUB_ARRAY_MAKE_ARRAY_SORTED_1_emit.rs:28:24
    |
 28 |     while i < n && arr[i - 1] < arr[i] {
    |                        ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/CHECK_WHETHER_ARITHMETIC_PROGRESSION_CAN_FORMED_GIVEN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_WHETHER_ARITHMETIC_PROGRESSION_CAN_FORMED_GIVEN_ARRAY/CHECK_WHETHER_ARITHMETIC_PROGRESSION_CAN_FORMED_GIVEN_ARRAY_emit.rs:29:17
    |
 29 |         if (arr[i] - arr[i-1]).abs() != d {
    |                 ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/CHECK_WHETHER_GIVEN_DEGREES_VERTICES_REPRESENT_GRAPH_TREE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHECK_WHETHER_GIVEN_DEGREES_VERTICES_REPRESENT_GRAPH_TREE/CHECK_WHETHER_GIVEN_DEGREES_VERTICES_REPRESENT_GRAPH_TREE_emit.rs:28:4
   |
23 | fn f_gold(degree: [i32;2], n: i32) -> i32 {
   |                                       --- expected `i32` because of return type
...
28 |    2 * (n - 1) == deg_sum
   |    ^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:23:16
   |
21 | fn f_gold(arr: &mut [f32], n: u32, m: u32) -> i32 {
   |                                               --- expected `i32` because of return type
22 |     if m == 0 || n == 0 {
23 |         return 0.;
   |                ^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:33:24
    |
 33 |         let diff = arr[i+m-1] - arr[i];
```


## cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0573]: expected type, found module `string`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_emit.rs:22:37
    |
 22 | fn f_gold(num: f32, k_prec: i32) -> string {
    |                                     ^^^^^^ help: a struct with a similar name exists (notice the capitalization): `String`
    |
   ::: /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs:353:1
    |
353 | pub struct String {
    | ----------------- similarly named struct `String` defined here
error[E0277]: cannot add `char` to `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER/CONVERT_DECIMAL_FRACTION_BINARY_NUMBER_emit.rs:29:26
```


## cpp_transcoder/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES/CONVERT_STRICTLY_INCREASING_ARRAY_MINIMUM_CHANGES_emit.rs:22:27
     |
  22 |     let mut LIS = vec![1; n];
     |                   --------^-
     |                   |       |
     |                   |       expected `usize`, found `u32`
     |                   arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/COST_BALANCE_PARANTHESES

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; split comma-separated mutable let binding; removed trailing extra `))` after function body; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COST_BALANCE_PARANTHESES/COST_BALANCE_PARANTHESES_emit.rs:24:9
   |
23 | /     if s.is_empty() {
24 | |         0
   | |         ^ expected `()`, found integer
25 | |     }
   | |_____- expected this to be `()`
   |
help: you might have meant to return this value
   |
24 |         return 0;
```


## cpp_transcoder/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS_emit.rs:26:21
    |
 26 |             if (str[i] as f32 - str[j] as f32).abs() == (i as f32 - j as f32).abs()  {
    |                     ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE/COUNT_FACTORIAL_NUMBERS_IN_A_GIVEN_RANGE_emit.rs:35:5
   |
22 | fn f_gold(low: f32, high: f32) -> i32 {
   |                                   --- expected `i32` because of return type
...
35 |     res
   |     ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY/COUNT_INVERSIONS_OF_SIZE_THREE_IN_A_GIVE_ARRAY_emit.rs:26:20
    |
 26 |             if arr[i] > arr[j] {
    |                    ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/COUNT_MINIMUM_NUMBER_SUBSETS_SUBSEQUENCES_CONSECUTIVE_NUMBERS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_MINIMUM_NUMBER_SUBSETS_SUBSEQUENCES_CONSECUTIVE_NUMBERS/COUNT_MINIMUM_NUMBER_SUBSETS_SUBSEQUENCES_CONSECUTIVE_NUMBERS_emit.rs:27:16
    |
 27 |         if arr[i] + 1.0 != arr[i + 1] {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/COUNT_NUMBERS_CAN_CONSTRUCTED_USING_TWO_NUMBERS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_NUMBERS_CAN_CONSTRUCTED_USING_TWO_NUMBERS/COUNT_NUMBERS_CAN_CONSTRUCTED_USING_TWO_NUMBERS_emit.rs:32:12
   |
32 |         if arr[i as usize] {
   |            ^^^^^^^^^^^^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/COUNT_NUMBER_INCREASING_SUBSEQUENCES_SIZE_K

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_NUMBER_INCREASING_SUBSEQUENCES_SIZE_K/COUNT_NUMBER_INCREASING_SUBSEQUENCES_SIZE_K_emit.rs:22:33
     |
  22 |     let mut dp = vec![vec![0.0; n]; k];
     |                       ----------^-
     |                       |         |
     |                       |         expected `usize`, found `u32`
     |                       arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K_emit.rs:30:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
30 |     count
   |     ^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32;2]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1/COUNT_PAIRS_DIFFERENCE_EQUAL_K_1_emit.rs:28:15
    |
 28 |     match arr[r] - arr[l] {
    |               ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `mut str:i32 [char]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:40:36
   |
40 |             if str[i] == str[j] && p[i + 1][j - 1] {
   |                ----------------    ^^^^^^^^^^^^^^^ expected `bool`, found integer
   |                |
   |                expected because this is `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_emit.rs:43:16
   |
43 |             if p[i][j] {
   |                ^^^^^^^ expected `bool`, found integer
```


## cpp_transcoder/COUNT_POSSIBLE_GROUPS_SIZE_2_3_SUM_MULTIPLE_3

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_POSSIBLE_GROUPS_SIZE_2_3_SUM_MULTIPLE_3/COUNT_POSSIBLE_GROUPS_SIZE_2_3_SUM_MULTIPLE_3_emit.rs:25:15
    |
 25 |         c[arr[i] as usize % 3] += 1f32;
    |               ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_SET_BITS_IN_AN_INTEGER/COUNT_SET_BITS_IN_AN_INTEGER_emit.rs:26:9
   |
26 |         n >>= 1;
   |         ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
22 | fn f_gold(mut n: u32) -> u32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## cpp_transcoder/COUNT_STRINGS_WITH_CONSECUTIVE_1S

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[{integer}]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_STRINGS_WITH_CONSECUTIVE_1S/COUNT_STRINGS_WITH_CONSECUTIVE_1S_emit.rs:24:18
    |
 24 |         a.push(a[i - 1] + b[i - 1]);
    |                  ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[{integer}]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/COUNT_WORDS_WHOSE_TH_LETTER_EITHER_1_TH_TH_I1_TH_LETTER_GIVEN_WORD

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[char]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/COUNT_WORDS_WHOSE_TH_LETTER_EITHER_1_TH_TH_I1_TH_LETTER_GIVEN_WORD/COUNT_WORDS_WHOSE_TH_LETTER_EITHER_1_TH_TH_I1_TH_LETTER_GIVEN_WORD_emit.rs:32:16
    |
 32 |         if str[j] == str[j-1] && str[j] == str[j+1] {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[char]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1_emit.rs:24:20
     |
  24 |    arr.iter().fold(f32::MIN, |max, &x| f32::max(max, x))
     |               ---- ^^^^^^^^ expected `i32`, found `f32`
     |               |
     |               arguments to this method are incorrect
     |
help: the return type of this call is `f32` due to the type of the argument passed
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1/C_PROGRAM_FIND_LARGEST_ELEMENT_ARRAY_1_emit.rs:24:4
     |
  24 |    arr.iter().fold(f32::MIN, |max, &x| f32::max(max, x))
```


## cpp_transcoder/DECODE_STRING_RECURSIVELY_ENCODED_COUNT_FOLLOWED_SUBSTRING

- Status: missing-llm
- CSV compile expected: False
- Source note: missing LLM output block
- O0: failed

```text
no emit source
```


## cpp_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS_emit.rs:22:5
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |     (x ^ y) < 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0433]: failed to resolve: use of unresolved module or unlinked crate `cmp`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY/DIFFERENCE_BETWEEN_HIGHEST_AND_LEAST_FREQUENCIES_IN_AN_ARRAY_emit.rs:32:13
   |
32 | max_count = cmp::max(max_count, count);
   |             ^^^ use of unresolved module or unlinked crate `cmp`
   |
   = help: you might be missing a crate named `cmp`
help: consider importing this module
   |
19 + use std::cmp;
   |
error[E0433]: failed to resolve: use of unresolved module or unlinked crate `cmp`
```


## cpp_transcoder/DIFFERENCE_MAXIMUM_SUM_MINIMUM_SUM_N_M_ELEMENTSIN_REVIEW

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DIFFERENCE_MAXIMUM_SUM_MINIMUM_SUM_N_M_ELEMENTSIN_REVIEW/DIFFERENCE_MAXIMUM_SUM_MINIMUM_SUM_N_M_ELEMENTSIN_REVIEW_emit.rs:31:5
   |
23 | fn f_gold(arr: &mut [f32], n: i32, m: i32) -> i32 {
   |                                               --- expected `i32` because of return type
...
31 |     max - min
   |     ^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/DYNAMIC_PROGRAMMING_HIGH_EFFORT_VS_LOW_EFFORT_TASKS_PROBLEM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_HIGH_EFFORT_VS_LOW_EFFORT_TASKS_PROBLEM/DYNAMIC_PROGRAMMING_HIGH_EFFORT_VS_LOW_EFFORT_TASKS_PROBLEM_emit.rs:26:9
   |
24 | fn f_gold(high: [f32;2], low: [f32;2], n: i32) -> i32 {
   |                                                   --- expected `i32` because of return type
25 |     if n <= 0 {
26 |         0.0
   |         ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_HIGH_EFFORT_VS_LOW_EFFORT_TASKS_PROBLEM/DYNAMIC_PROGRAMMING_HIGH_EFFORT_VS_LOW_EFFORT_TASKS_PROBLEM_emit.rs:28:23
    |
 28 |         f32::max(high[n as u32 - 1] + f_gold(high, low, n - 2),
```


## cpp_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_emit.rs:29:17
    |
 29 |             val[n as u32 - 1] + f_gold(W - wt[n as u32 - 1], wt, val, n - 1),
    |                 ^^^^^^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE/DYNAMIC_PROGRAMMING_SET_14_MAXIMUM_SUM_INCREASING_SUBSEQUENCE_emit.rs:22:30
     |
  22 |     let mut msis = vec![0.0; n];
     |                    ----------^-
     |                    |         |
     |                    |         expected `usize`, found `u32`
     |                    arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/DYNAMIC_PROGRAMMING_SET_37_BOOLEAN_PARENTHESIZATION_PROBLEM

- Status: missing-llm
- CSV compile expected: False
- Source note: missing LLM output block
- O0: failed

```text
no emit source
```


## cpp_transcoder/DYNAMIC_PROGRAMMING_SET_3_LONGEST_INCREASING_SUBSEQUENCE_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0282]: type annotations needed
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_3_LONGEST_INCREASING_SUBSEQUENCE_1/DYNAMIC_PROGRAMMING_SET_3_LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:30
   |
31 |     f_gold.iter().fold(0.0, |a, b| a.max(*b))
   |                              ^     - type must be known at this point
   |
help: consider giving this closure parameter an explicit type
   |
31 |     f_gold.iter().fold(0.0, |a: /* Type */, b| a.max(*b))
   |                               ++++++++++++
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_3_LONGEST_INCREASING_SUBSEQUENCE_1/DYNAMIC_PROGRAMMING_SET_3_LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:24
```


## cpp_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:22:23
   |
21 | fn f_gold(p: [f32;2], i: u32, j: u32) -> i32 {
   |                                          --- expected `i32` because of return type
22 |     if i == j {return 0.0;}
   |                       ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:27:57
    |
 27 |         count = f_gold(p, i, k) + f_gold(p, k+1, j) + p[i-1] * p[k] * p[j];
    |                                                         ^^^ slice indices are of type `usize` or ranges of `usize`
```


## cpp_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_1_emit.rs:38:5
   |
21 | fn f_gold(p: [f32;2], n: f32) -> i32 {
   |                                  --- expected `i32` because of return type
...
38 |     m[1][n as usize - 1]
   |     ^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_emit.rs:22:53
     |
  22 |    let mut subset = vec![vec![0; sum as usize + 1]; n + 1];
     |                     --------------------------------^^^^^-
     |                     |                               |
     |                     |                               expected `usize`, found `u32`
     |                     arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/EFFICIENT_WAY_CHECK_WHETHER_N_TH_FIBONACCI_NUMBER_MULTIPLE_10

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/EFFICIENT_WAY_CHECK_WHETHER_N_TH_FIBONACCI_NUMBER_MULTIPLE_10/EFFICIENT_WAY_CHECK_WHETHER_N_TH_FIBONACCI_NUMBER_MULTIPLE_10_emit.rs:28:5
   |
27 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
28 |     n % 15 == 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/EQUILIBRIUM_INDEX_OF_AN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/EQUILIBRIUM_INDEX_OF_AN_ARRAY/EQUILIBRIUM_INDEX_OF_AN_ARRAY_emit.rs:28:28
    |
 28 |             leftsum += arr[j];
    |                            ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:24:45
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32{
   |                                                 --- expected `i32` because of return type
...
24 |         if mid == arr[mid as usize] {return mid;}
   |                                             ^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_1_emit.rs:25:22
    |
 25 |         if mid > arr[mid as u32] {return f_gold(arr, mid + 1.0, high);}
```


## cpp_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_emit.rs:28:22
    |
 28 |                 if A[i] + A[j] + A[k] == sum {
    |                      ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE/FIND_BITONIC_POINT_GIVEN_BITONIC_SEQUENCE_emit.rs:24:16
    |
 24 |         if arr[mid-1] < arr[mid] && arr[mid] > arr[mid+1] {
    |                ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; removed trailing extra `)` after function body; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0599]: no method named `pop` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:26:29
   |
26 |             let top = stack.pop().unwrap();
   |                             ^^^ method not found in `VecDeque<char>`
error[E0599]: no method named `pop` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:30:29
   |
30 |                 top = stack.pop().unwrap();
   |                             ^^^ method not found in `VecDeque<char>`
error[E0599]: no method named `push` found for struct `VecDeque<T, A>` in the current scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT/FIND_EXPRESSION_DUPLICATE_PARENTHESIS_NOT_emit.rs:36:19
```


## cpp_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1_emit.rs:25:28
   |
25 |     let mut right: usize = n - 1;
   |                    -----   ^^^^^ expected `usize`, found `u32`
   |                    |
   |                    expected due to this
   |
help: you can convert a `u32` to a `usize` and panic if the converted value doesn't fit
   |
25 |     let mut right: usize = (n - 1).try_into().unwrap();
   |                            +     +++++++++++++++++++++
```


## cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_emit.rs:38:7
   |
38 |    if !found {
   |       ^^^^^^ expected `bool`, found integer
error[E0317]: `if` may be missing an `else` clause
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D/FIND_LARGEST_D_IN_ARRAY_SUCH_THAT_A_B_C_D_emit.rs:38:4
   |
20 |   fn f_gold(S: [i32;2], n: i32) -> i32 {
   |                                    --- expected `i32` because of this return type
...
38 | /    if !found {
```


## cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH/FIND_MAXIMUM_AVERAGE_SUBARRAY_OF_K_LENGTH_emit.rs:36:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
36 |     (max_end-k as usize+1) as f32
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_emit.rs:29:5
   |
21 | fn f_gold(A: [f32;2], B: [f32;2], m: i32, n: i32) -> i32 {
   |                                                      --- expected `i32` because of return type
...
29 |     dp[n as usize][m as usize]
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
23 |     if n < 3.0 {
24 |         return f32::NAN
   |                ^^^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_emit.rs:34:5
   |
22 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
```


## cpp_transcoder/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS/FIND_MAXIMUM_SUM_POSSIBLE_EQUAL_SUM_THREE_STACKS_emit.rs:26:24
    |
 26 |         sum1 += stack1[i];
    |                        ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/FIND_MINIMUM_DIFFERENCE_PAIR

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MINIMUM_DIFFERENCE_PAIR/FIND_MINIMUM_DIFFERENCE_PAIR_emit.rs:26:21
    |
 26 |             if (arr[i] - arr[j]).abs() < diff {
    |                     ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/FIND_MINIMUM_DIFFERENCE_PAIR_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MINIMUM_DIFFERENCE_PAIR_1/FIND_MINIMUM_DIFFERENCE_PAIR_1_emit.rs:25:16
    |
 25 |         if arr[i + 1] - arr[i] < diff {
    |                ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:23:16
   |
21 | fn f_gold(arr: &mut [f32], low: u32, high: u32) -> i32 {
   |                                                    --- expected `i32` because of return type
22 |     if high < low {
23 |         return arr[0]
   |                ^^^^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:26:20
    |
 26 |         return arr[low]
```


## cpp_transcoder/FIND_RECTANGLE_BINARY_MATRIX_CORNERS_1

- Status: missing-llm
- CSV compile expected: False
- Source note: missing LLM output block
- O0: failed

```text
no emit source
```


## cpp_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1_emit.rs:28:16
   |
23 | fn f_gold(arr: [f32;2], low: u32, high: u32) -> i32{
   |                                                 --- expected `i32` because of return type
...
28 |         return low;
   |                ^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
28 |         return low.try_into().unwrap();
```


## cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_SUBARRAY_WITH_GIVEN_SUM_1/FIND_SUBARRAY_WITH_GIVEN_SUM_1_emit.rs:34:22
   |
24 | fn f_gold(arr: [f32;2], n: f32, sum: f32) -> i32 {
   |                                              --- expected `i32` because of return type
...
34 |              return  1.0;
   |                      ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/FIND_THE_FIRST_MISSING_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `array:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_THE_FIRST_MISSING_NUMBER/FIND_THE_FIRST_MISSING_NUMBER_emit.rs:23:16
   |
21 | fn f_gold(array: &mut [f32], start: f32, end: f32) -> i32 {
   |                                                       --- expected `i32` because of return type
22 |     if start > end {
23 |         return end + 1.0;
   |                ^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_emit.rs:25:27
    |
 25 |             if ((x == arr[i] && y == arr[j]) || (y == arr[i] && x == arr[j]))
    |                           ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/FIND_THE_MINIMUM_DISTANCE_BETWEEN_TWO_NUMBERS_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

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


## cpp_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_emit.rs:27:28
   |
22 | fn f_gold(a1: [f32;2], a2: [f32;2], a3: [f32;2], n1: f32, n2: f32, n3: f32, sum: f32) -> i32 {
   |                                                                                          --- expected `i32` because of return type
...
27 |                     return 1.0;
   |                            ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_emit.rs:32:5
   |
22 | fn f_gold(a1: [f32;2], a2: [f32;2], a3: [f32;2], n1: f32, n2: f32, n3: f32, sum: f32) -> i32 {
```


## cpp_transcoder/FIND_WHETHER_AN_ARRAY_IS_SUBSET_OF_ANOTHER_ARRAY_SET_1_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_WHETHER_AN_ARRAY_IS_SUBSET_OF_ANOTHER_ARRAY_SET_1_1/FIND_WHETHER_AN_ARRAY_IS_SUBSET_OF_ANOTHER_ARRAY_SET_1_1_emit.rs:29:17
    |
 29 |         if arr1[j] < arr2[i] {
    |                 ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2_emit.rs:24:5
   |
23 | fn f_gold(n: u32) -> i32 {
   |                      --- expected `i32` because of return type
24 |     n != 0 && ((n & (n - 1)) == 0) && n & 0xAAAAAAAA != 0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/FLOOR_IN_A_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_emit.rs:25:17
    |
 25 |     if x >= arr[high] {
    |                 ^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0600]: cannot apply unary operator `-` to type `usize`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1/FORM_MINIMUM_NUMBER_FROM_GIVEN_SEQUENCE_1_emit.rs:29:30
   |
29 |             for j in (i-1)..=-1 {
   |                              ^^ cannot apply unary operator `-`
   |
   = note: unsigned values cannot be negated
help: you may have meant the maximum value of `usize`
   |
29 -             for j in (i-1)..=-1 {
29 +             for j in (i-1)..=usize::MAX {
   |
```


## cpp_transcoder/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: unexpected closing delimiter: `}`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION/FORM_SMALLEST_NUMBER_USING_ONE_SWAP_OPERATION_emit.rs:62:1
   |
30 |         } else {
   |                - this delimiter might not be properly closed...
...
33 |             } else {
   |             - ...as it matches this but it has different indentation
...
62 | }
   | ^ unexpected closing delimiter
error: aborting due to 1 previous error
```


## cpp_transcoder/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `s1:i32 [char]`; repaired malformed array parameter `s2:i32 [char]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[char]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1/FUNCTION_COPY_STRING_ITERATIVE_RECURSIVE_1_emit.rs:23:7
    |
 23 |    s2[index] = s1[index];
    |       ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[char]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/HORNERS_METHOD_POLYNOMIAL_EVALUATION/HORNERS_METHOD_POLYNOMIAL_EVALUATION_emit.rs:27:3
   |
22 | fn f_gold(poly: [f32;2], n: i32, x: f32) -> i32 {
   |                                             --- expected `i32` because of return type
...
27 |   result
   |   ^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_emit.rs:24:12
    |
 24 |     if arr[i as u32] >= arr[(2.0 * i + 1.0) as u32] && arr[i as u32] >= arr[(2.0 * i + 2.0) as u32] && f_gold(arr, 2.0 * i + 1.0, n) == 1...
    |            ^^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_1/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_1_emit.rs:23:16
    |
 23 |         if arr[2*i + 1] > arr[i] {return 0;}
    |                ^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/INTEGER_POSITIVE_VALUE_POSITIVE_NEGATIVE_VALUE_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/INTEGER_POSITIVE_VALUE_POSITIVE_NEGATIVE_VALUE_ARRAY_1/INTEGER_POSITIVE_VALUE_POSITIVE_NEGATIVE_VALUE_ARRAY_1_emit.rs:33:5
   |
21 | fn f_gold(arr: &mut [f32], n: i32) -> i32 {
   |                                       --- expected `i32` because of return type
...
33 |     sum / (neg - pos).abs() as f32
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:27:45
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
   |                                            --- expected `i32` because of return type
...
27 |         if dist_count == k as usize {return arr[i];}
   |                                             ^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:29:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
```


## cpp_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_emit.rs:22:51
    |
 22 |     let mut sorted: Vec<f32> = Vec::with_capacity(m + n);
    |                                ------------------ ^^^^^ expected `usize`, found `u32`
    |                                |
    |                                arguments to this function are incorrect
    |
note: associated function defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:522:12
    |
522 |     pub fn with_capacity(capacity: usize) -> Self {
```


## cpp_transcoder/LARGEST_SUM_CONTIGUOUS_SUBARRAY_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LARGEST_SUM_CONTIGUOUS_SUBARRAY_2/LARGEST_SUM_CONTIGUOUS_SUBARRAY_2_emit.rs:28:5
   |
21 | fn f_gold(a: [f32;2], size: i32) -> i32 {
   |                                     --- expected `i32` because of return type
...
28 |     max_so_far
   |     ^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_emit.rs:30:19
    |
 30 |             if s1[i - 1] == s2[j - 1] {
    |                   ^^^^^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY/LENGTH_OF_THE_LONGEST_ARITHMATIC_PROGRESSION_IN_A_SORTED_ARRAY_emit.rs:25:16
   |
23 | fn f_gold(set: [f32;2], n: u32) -> i32 {
   |                                    --- expected `i32` because of return type
24 |     if n <= 2 {
25 |         return n;
   |                ^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
25 |         return n.try_into().unwrap();
```


## cpp_transcoder/LEXICOGRAPHICALLY_NEXT_STRING

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LEXICOGRAPHICALLY_NEXT_STRING/LEXICOGRAPHICALLY_NEXT_STRING_emit.rs:26:13
    |
 26 |     while s[i] == 'z' && i >= 0 {
    |             ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION/LONGEST_COMMON_SUBSTRING_SPACE_OPTIMIZED_DP_SOLUTION_emit.rs:25:24
   |
25 |     let mut len = [[0; n]; 2];
   |                        ^ non-constant value
   |
help: consider using `const` instead of `let`
   |
23 -     let n = y.len();
23 +     const n: /* Type */ = y.len();
   |
error[E0277]: the type `str` cannot be indexed by `usize`
```


## cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32;2]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0282]: type annotations needed
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:29
   |
31 |    f_gold.iter().fold(0.0, |max, &x| max.max(x))
   |                             ^^^      --- type must be known at this point
   |
help: consider giving this closure parameter an explicit type
   |
31 |    f_gold.iter().fold(0.0, |max: /* Type */, &x| max.max(x))
   |                                ++++++++++++
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_INCREASING_SUBSEQUENCE_1/LONGEST_INCREASING_SUBSEQUENCE_1_emit.rs:31:23
```


## cpp_transcoder/LONGEST_REPEATED_SUBSEQUENCE_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_REPEATED_SUBSEQUENCE_1/LONGEST_REPEATED_SUBSEQUENCE_1_emit.rs:26:20
    |
 26 |             if str[i - 1] == str[j - 1] && i != j {
    |                    ^^^^^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/LONGEST_REPEATING_AND_NON_OVERLAPPING_SUBSTRING

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_REPEATING_AND_NON_OVERLAPPING_SUBSTRING/LONGEST_REPEATING_AND_NON_OVERLAPPING_SUBSTRING_emit.rs:32:20
    |
 32 |             if str[i - 1] == str[j - 1] && LCSRe[i - 1][j - 1] < (j - i) as f32 {
    |                    ^^^^^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_emit.rs:26:20
    |
 26 |             if str[i - 1] == str[j - 1] && i != j {
    |                    ^^^^^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/LOWER_INSERTION_POINT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
   |                                            --- expected `i32` because of return type
22 |     if x < arr[0] {
23 |         return 0.;
   |                ^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:36:5
   |
21 | fn f_gold(arr: [f32;2], n: f32, x: f32) -> i32 {
```


## cpp_transcoder/MAKE_LARGEST_PALINDROME_CHANGING_K_DIGITS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAKE_LARGEST_PALINDROME_CHANGING_K_DIGITS/MAKE_LARGEST_PALINDROME_CHANGING_K_DIGITS_emit.rs:26:16
    |
 26 |         if str[l] != str[r] {
    |                ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: this file contains an unclosed delimiter
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_emit.rs:53:3
   |
22 | fn f_gold (arr: Vec<f32>, n: i32, num: f32, max_limit: f32) -> i32 {
   |                                                                    - unclosed delimiter
...
25 |     if dp[n as usize - 1][val as usize] > 0 {
   |                                             - this delimiter might not be properly closed...
...
53 | }
   | -^
   | |
```


## cpp_transcoder/MAXIMIZE_SUM_CONSECUTIVE_DIFFERENCES_CIRCULAR_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMIZE_SUM_CONSECUTIVE_DIFFERENCES_CIRCULAR_ARRAY/MAXIMIZE_SUM_CONSECUTIVE_DIFFERENCES_CIRCULAR_ARRAY_emit.rs:25:26
    |
 25 |         sum -= 2.0 * arr[i];
    |                          ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MAXIMUM_AREA_RECTANGLE_PICKING_FOUR_SIDES_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_AREA_RECTANGLE_PICKING_FOUR_SIDES_ARRAY/MAXIMUM_AREA_RECTANGLE_PICKING_FOUR_SIDES_ARRAY_emit.rs:35:5
   |
22 | fn f_gold(arr: &mut [f32], n: i32) -> i32 {
   |                                       --- expected `i32` because of return type
...
35 |     dimension[0] * dimension[1]
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/MAXIMUM_GAMES_PLAYED_WINNER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_GAMES_PLAYED_WINNER/MAXIMUM_GAMES_PLAYED_WINNER_emit.rs:29:5
   |
22 | fn f_gold(N: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
29 |     i - 2
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
29 |     (i - 2).try_into().unwrap()
```


## cpp_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES/MAXIMUM_HEIGHT_OF_TRIANGULAR_ARRANGEMENT_OF_ARRAY_VALUES_emit.rs:33:5
   |
21 | fn f_gold(a: [f32;2], n: f32) -> i32 {
   |                                  --- expected `i32` because of return type
...
33 |     result
   |     ^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/MAXIMUM_LENGTH_PREFIX_ONE_STRING_OCCURS_SUBSEQUENCE_ANOTHER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_LENGTH_PREFIX_ONE_STRING_OCCURS_SUBSEQUENCE_ANOTHER/MAXIMUM_LENGTH_PREFIX_ONE_STRING_OCCURS_SUBSEQUENCE_ANOTHER_emit.rs:31:5
   |
21 | fn f_gold(s: &[u8], t: &[u8]) -> i32 {
   |                                  --- expected `i32` because of return type
...
31 |     count
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
31 |     count.try_into().unwrap()
```


## cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0423]: expected value, found builtin type `str`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING/MAXIMUM_NUMBER_CHARACTERS_TWO_CHARACTER_STRING_emit.rs:21:9
   |
21 | let n = str.len();
   |         ^^^
   |
help: you might have meant to use `:` for type annotation
   |
21 - let n = str.len();
21 + let n: str.len();
   |
error[E0423]: expected value, found builtin type `str`
```


## cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_emit.rs:34:12
   |
34 |         if is_single {
   |            ^^^^^^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_1_emit.rs:26:16
    |
 26 |         if arr[i] != arr[i + 1] {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MAXIMUM_PRODUCT_SUBARRAY_ADDED_NEGATIVE_PRODUCT_CASE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_PRODUCT_SUBARRAY_ADDED_NEGATIVE_PRODUCT_CASE/MAXIMUM_PRODUCT_SUBARRAY_ADDED_NEGATIVE_PRODUCT_CASE_emit.rs:29:16
    |
 29 |         if arr[i] > 0 {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MAXIMUM_PRODUCT_SUBSET_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_PRODUCT_SUBSET_ARRAY/MAXIMUM_PRODUCT_SUBSET_ARRAY_emit.rs:30:14
    |
 30 |         if a[i] == 0 {
    |              ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_emit.rs:22:37
     |
  22 |     let mut profit = vec![vec![0.0; n + 1]; k + 1];
     |                           ----------^^^^^-
     |                           |         |
     |                           |         expected `usize`, found `u32`
     |                           arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/MAXIMUM_SUBARRAY_SUM_ARRAY_CREATED_REPEATED_CONCATENATION

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUBARRAY_SUM_ARRAY_CREATED_REPEATED_CONCATENATION/MAXIMUM_SUBARRAY_SUM_ARRAY_CREATED_REPEATED_CONCATENATION_emit.rs:34:11
   |
22 | fn f_gold(a: [f32;2], n: i32, k: i32) -> i32 {
   |                                          --- expected `i32` because of return type
...
34 |    return max_so_far;
   |           ^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM_emit.rs:24:31
     |
  24 | let mut prefix_sum = vec![0.; n];
     |                      ---------^-
     |                      |        |
     |                      |        expected `usize`, found `u32`
     |                      arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE/MAXIMUM_SUBSEQUENCE_SUM_SUCH_THAT_NO_THREE_ARE_CONSECUTIVE_emit.rs:23:28
     |
  23 |    let mut sum = vec![0.0; n];
     |                  ----------^-
     |                  |         |
     |                  |         expected `usize`, found `u32`
     |                  arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/MAXIMUM_SUM_BITONIC_SUBARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_BITONIC_SUBARRAY/MAXIMUM_SUM_BITONIC_SUBARRAY_emit.rs:23:31
     |
  23 |     let mut msis = vec![0f32; n];
     |                    -----------^-
     |                    |          |
     |                    |          expected `usize`, found `u32`
     |                    arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1/MAXIMUM_SUM_IARRI_AMONG_ROTATIONS_GIVEN_ARRAY_1_emit.rs:36:1
   |
21 | fn f_gold(arr: &mut [f32], n: i32) -> i32 {
   |                                       --- expected `i32` because of return type
...
36 | res
   | ^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0255]: the name `max` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT/MAXIMUM_SUM_SUBARRAY_REMOVING_ONE_ELEMENT_emit.rs:19:5
   |
11 | fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
   | ----------------------------- previous definition of the value `max` here
...
19 | use std::cmp::max;
   |     ^^^^^^^^^^^^^ `max` reimported here
   |
   = note: `max` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```


## cpp_transcoder/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS/MAXIMUM_SUM_SUBSEQUENCE_LEAST_K_DISTANT_ELEMENTS_emit.rs:22:27
     |
  22 |    let mut MS = vec![0.0; N];
     |                 ----------^-
     |                 |         |
     |                 |         expected `usize`, found `u32`
     |                 arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MAXIMUM_TRIPLET_SUM_ARRAY_2/MAXIMUM_TRIPLET_SUM_ARRAY_2_emit.rs:26:16
    |
 26 |         if arr[i] > max_a {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: missing `in` in `for` loop
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_emit.rs:27:15
   |
27 |     for count = 0; count <= n; count += 1 {
   |               ^
   |
help: try using `in` here instead
   |
27 -     for count = 0; count <= n; count += 1 {
27 +     for count in 0; count <= n; count += 1 {
   |
error: expected `{`, found `;`
```


## cpp_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_1/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_1_emit.rs:25:13
   |
22 | fn f_gold(a: f32, b: f32, c: f32) -> i32 {
   |                                      --- expected `i32` because of return type
...
25 |             b
   |             ^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_1/MIDDLE_OF_THREE_USING_MINIMUM_COMPARISONS_1_emit.rs:27:13
   |
22 | fn f_gold(a: f32, b: f32, c: f32) -> i32 {
```


## cpp_transcoder/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `a:i32 [f32]`; repaired malformed array parameter `b:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED/MINIMIZE_SUM_PRODUCT_TWO_ARRAYS_PERMUTATIONS_ALLOWED_emit.rs:31:4
   |
24 | fn f_gold(a: &mut [f32], b: &mut [f32], n: i32) -> i32 {
   |                                                    --- expected `i32` because of return type
...
31 |    result
   |    ^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_emit.rs:28:5
   |
21 | fn f_gold(a: [f32;2], n: i32) -> i32 {
   |                                  --- expected `i32` because of return type
...
28 |     mn * (sum - mn)
   |     ^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/MINIMUM_COST_CUT_BOARD_SQUARES

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `x:i32 [f32;2]`; repaired malformed array parameter `y:i32 [f32;2]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_COST_CUT_BOARD_SQUARES/MINIMUM_COST_CUT_BOARD_SQUARES_emit.rs:31:14
    |
 31 |         if x[i] > y[j] {
    |              ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1_emit.rs:34:29
    |
 34 |             curr_sum += arr[end];
    |                             ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: unexpected closing delimiter: `}`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED/MINIMUM_NUMBER_OF_BRACKET_REVERSALS_NEEDED_TO_MAKE_AN_EXPRESSION_BALANCED_emit.rs:46:1
   |
21 | fn f_gold(expr: String) -> i32 {
   |                                - this opening brace...
...
45 | }
   | - ...matches this closing brace
46 | }
   | ^ unexpected closing delimiter
error: aborting due to 1 previous error
```


## cpp_transcoder/MINIMUM_PRODUCT_SUBSET_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `a:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_PRODUCT_SUBSET_ARRAY/MINIMUM_PRODUCT_SUBSET_ARRAY_emit.rs:22:23
   |
21 | fn f_gold(a: &mut [f32], n: u32) -> i32 {
   |                                     --- expected `i32` because of return type
22 |     if n == 1 {return a[0];}
   |                       ^^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_PRODUCT_SUBSET_ARRAY/MINIMUM_PRODUCT_SUBSET_ARRAY_emit.rs:29:14
    |
 29 |         if a[i] == 0.0 {
    |              ^ slice indices are of type `usize` or ranges of `usize`
```


## cpp_transcoder/MINIMUM_ROTATIONS_UNLOCK_CIRCULAR_LOCK

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

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


## cpp_transcoder/MINIMUM_SUM_CHOOSING_MINIMUM_PAIRS_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_CHOOSING_MINIMUM_PAIRS_ARRAY/MINIMUM_SUM_CHOOSING_MINIMUM_PAIRS_ARRAY_emit.rs:27:14
    |
 27 |         if A[i] < min_val {
    |              ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MINIMUM_SUM_PRODUCT_TWO_ARRAYS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_PRODUCT_TWO_ARRAYS/MINIMUM_SUM_PRODUCT_TWO_ARRAYS_emit.rs:26:21
    |
 26 |         let pro = a[i] * b[i];
    |                     ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_emit.rs:23:28
     |
  23 |     let mut dp = vec![0.0; n];
     |                  ----------^-
     |                  |         |
     |                  |         expected `usize`, found `u32`
     |                  arguments to this function are incorrect
     |
note: function defined here
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/vec/mod.rs:3509:8
     |
```


## cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_emit.rs:28:14
   |
28 |     sum[2] = ar[2];
   |              ^^^^^ index out of bounds: the length is 2 but the index is 2
   |
   = note: `#[deny(unconditional_panic)]` on by default
error: this operation will panic at runtime
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1/MINIMUM_SUM_SUBSEQUENCE_LEAST_ONE_EVERY_FOUR_CONSECUTIVE_ELEMENTS_PICKED_1_emit.rs:29:14
   |
29 |     sum[3] = ar[3];
   |              ^^^^^ index out of bounds: the length is 2 but the index is 3
```


## cpp_transcoder/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], n: i32) -> i32 {
   |                                    --- expected `i32` because of return type
23 |     if n <= 0 {
24 |         return 0.0;
   |                ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE/MINIMUM_TIME_TO_FINISH_TASKS_WITHOUT_SKIPPING_TWO_CONSECUTIVE_emit.rs:34:5
   |
22 | fn f_gold(arr: [f32;2], n: i32) -> i32 {
```


## cpp_transcoder/MINIMUM_XOR_VALUE_PAIR_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MINIMUM_XOR_VALUE_PAIR_1/MINIMUM_XOR_VALUE_PAIR_1_emit.rs:27:20
    |
 27 |         val = (arr[i] as i32) ^ (arr[i + 1] as i32);
    |                    ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/MIRROR_CHARACTERS_STRING

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING_emit.rs:25:17
   |
25 |     for i in n..l {
   |                 ^ expected `i32`, found `usize`
error[E0277]: the trait bound `i32: Pattern` is not satisfied
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MIRROR_CHARACTERS_STRING/MIRROR_CHARACTERS_STRING_emit.rs:26:21
    |
 26 |         str.replace(i, 1, &reverse_alphabet[(str.chars().nth(i).unwrap() as usize) - 'a' as usize]);
    |             ------- ^ the trait `FnMut(char)` is not implemented for `i32`
    |             |
    |             required by a bound introduced by this call
```


## cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `usize`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS/MULTIPLY_LARGE_NUMBERS_REPRESENTED_AS_STRINGS_emit.rs:32:23
    |
 32 |         let n1 = num1[i] as i32 - '0' as i32;
    |                       ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `usize`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/NON_REPEATING_ELEMENT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32;2]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/NON_REPEATING_ELEMENT/NON_REPEATING_ELEMENT_emit.rs:28:30
    |
 28 |             if i != j && arr[i] == arr[j] {
    |                              ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT/NUMBER_IS_DIVISIBLE_BY_29_OR_NOT_emit.rs:31:5
   |
25 | fn f_gold(mut n: i32) -> i32 {
   |                          --- expected `i32` because of return type
...
31 |     n % 29 == 0
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/PAINTING_FENCE_ALGORITHM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PAINTING_FENCE_ALGORITHM/PAINTING_FENCE_ALGORITHM_emit.rs:32:5
   |
23 | fn f_gold(n: i32, k: i32) -> i32 {
   |                              --- expected `i32` because of return type
...
32 |     total
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
32 |     total.try_into().unwrap()
```


## cpp_transcoder/PAIR_WITH_GIVEN_PRODUCT_SET_1_FIND_IF_ANY_PAIR_EXISTS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PAIR_WITH_GIVEN_PRODUCT_SET_1_FIND_IF_ANY_PAIR_EXISTS/PAIR_WITH_GIVEN_PRODUCT_SET_1_FIND_IF_ANY_PAIR_EXISTS_emit.rs:26:20
    |
 26 |             if arr[i] * arr[j] == x as f32 {
    |                    ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/PANGRAM_CHECKING

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PANGRAM_CHECKING/PANGRAM_CHECKING_emit.rs:36:12
   |
36 |         if !mark[i]  {
   |            ^^^^^^^^ expected `bool`, found `i32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `a:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS/POSITIVE_ELEMENTS_EVEN_NEGATIVE_ODD_POSITIONS_emit.rs:26:36
    |
 26 |         while positive < size && a[positive] >= 0.0 {
    |                                    ^^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES_emit.rs:24:16
   |
22 | fn f_gold(arr: &mut [f32], N: f32) -> i32 {
   |                                       --- expected `i32` because of return type
23 |     if N < 3.0 {
24 |         return 0.0;
   |                ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES/POSSIBLE_FORM_TRIANGLE_ARRAY_VALUES_emit.rs:32:5
   |
22 | fn f_gold(arr: &mut [f32], N: f32) -> i32 {
```


## cpp_transcoder/POSSIBLE_TO_MAKE_A_DIVISIBLE_BY_3_NUMBER_USING_ALL_DIGITS_IN_AN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/POSSIBLE_TO_MAKE_A_DIVISIBLE_BY_3_NUMBER_USING_ALL_DIGITS_IN_AN_ARRAY/POSSIBLE_TO_MAKE_A_DIVISIBLE_BY_3_NUMBER_USING_ALL_DIGITS_IN_AN_ARRAY_emit.rs:27:12
   |
22 | fn f_gold(arr: [i32;2], n: i32) -> i32 {
   |                                    --- expected `i32` because of return type
...
27 |     return remainder == 0
   |            ^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/PRINT_A_CLOSEST_STRING_THAT_DOES_NOT_CONTAIN_ADJACENT_DUPLICATES

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRINT_A_CLOSEST_STRING_THAT_DOES_NOT_CONTAIN_ADJACENT_DUPLICATES/PRINT_A_CLOSEST_STRING_THAT_DOES_NOT_CONTAIN_ADJACENT_DUPLICATES_emit.rs:23:16
   |
23 |    for i in 1..n {
   |                ^ expected integer, found `f32`
error[E0277]: the type `str` cannot be indexed by `{integer}`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRINT_A_CLOSEST_STRING_THAT_DOES_NOT_CONTAIN_ADJACENT_DUPLICATES/PRINT_A_CLOSEST_STRING_THAT_DOES_NOT_CONTAIN_ADJACENT_DUPLICATES_emit.rs:24:13
    |
 24 |        if s[i] == s[i-1] {
    |             ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `{integer}`
```


## cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0255]: the name `min` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRINT_SHORTEST_COMMON_SUPERSEQUENCE/PRINT_SHORTEST_COMMON_SUPERSEQUENCE_emit.rs:19:5
   |
 9 | fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
   | ----------------------------- previous definition of the value `min` here
...
19 | use std::cmp::min;
   |     ^^^^^^^^^^^^^ `min` reimported here
   |
   = note: `min` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```


## cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr1:i32 [f32]`; repaired malformed array parameter `arr2:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_emit.rs:24:4
   |
21 | fn f_gold(arr1: &mut [f32], arr2: &mut [f32], n1: i32, n2: i32) -> i32 {
   |                                                                    --- expected `i32` because of return type
...
24 |    arr1[n1 as usize - 1] * arr2[0]
   |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1/PRODUCT_MAXIMUM_FIRST_ARRAY_MINIMUM_SECOND_1_emit.rs:28:17
    |
 28 |         if arr1[i] > max {
    |                 ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/PROGRAMMING_PUZZLE_ASSIGN_VALUE_WITHOUT_CONTROL_STATEMENT

- Status: missing-llm
- CSV compile expected: False
- Source note: missing LLM output block
- O0: failed

```text
no emit source
```


## cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], n: u32) -> i32 {
   |                                    --- expected `i32` because of return type
22 |     if n == 0 || n == 1 {
23 |         return 1.0;
   |                ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_1_emit.rs:26:16
    |
 26 |         if arr[i - 1] > arr[i] {
```


## cpp_transcoder/PROGRAM_CHECK_ISBN

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `str` cannot be indexed by `{integer}`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_CHECK_ISBN/PROGRAM_CHECK_ISBN_emit.rs:27:26
    |
 27 |         let digit = isbn[i] as i32 - '0' as i32;
    |                          ^ string indices are ranges of `usize`
    |
    = help: the trait `SliceIndex<str>` is not implemented for `{integer}`
    = note: you can use `.chars().nth()` or `.bytes().nth()`
            for more information, see chapter 8 in The Book: <https://doc.rust-lang.org/book/ch08-02-strings.html#indexing-into-strings>
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
```


## cpp_transcoder/PROGRAM_FIND_SMALLEST_DIFFERENCE_ANGLES_TWO_PARTS_GIVEN_CIRCLE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_FIND_SMALLEST_DIFFERENCE_ANGLES_TWO_PARTS_GIVEN_CIRCLE/PROGRAM_FIND_SMALLEST_DIFFERENCE_ANGLES_TWO_PARTS_GIVEN_CIRCLE_emit.rs:34:1
   |
21 | fn f_gold(arr: &[f32;2], n: i32) -> i32 {
   |                                     --- expected `i32` because of return type
...
34 | ans
   | ^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/PROGRAM_TO_CHECK_IF_A_GIVEN_NUMBER_IS_LUCKY_ALL_DIGITS_ARE_DIFFERENT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/PROGRAM_TO_CHECK_IF_A_GIVEN_NUMBER_IS_LUCKY_ALL_DIGITS_ARE_DIFFERENT/PROGRAM_TO_CHECK_IF_A_GIVEN_NUMBER_IS_LUCKY_ALL_DIGITS_ARE_DIFFERENT_emit.rs:27:12
   |
27 |         if arr[digit] {
   |            ^^^^^^^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs:27:16
   |
21 | fn f_gold(a: [f32;2], b: [f32;2], n: f32) -> i32 {
   |                                              --- expected `i32` because of return type
...
27 |         return a[0] + b[0];
   |                ^^^^^^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD/SCHEDULE_JOBS_SERVER_GETS_EQUAL_LOAD_emit.rs:50:20
   |
50 |             b[i] = b[i + 1] = 0.0;
```


## cpp_transcoder/SEARCH_ALMOST_SORTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SEARCH_ALMOST_SORTED_ARRAY/SEARCH_ALMOST_SORTED_ARRAY_emit.rs:24:16
    |
 24 |         if arr[mid] == x { return mid as i32; }
    |                ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY/SEARCH_AN_ELEMENT_IN_A_SORTED_AND_PIVOTED_ARRAY_emit.rs:26:12
    |
 26 |     if arr[mid] == key {
    |            ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:26:19
    |
 26 |     if key == arr[mid] {
    |                   ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_1_emit.rs:26:16
   |
24 | fn f_gold(arr: &mut [f32], n: u32, key: f32, capacity: u32) -> i32 {
   |                                                                --- expected `i32` because of return type
25 |     if n >= capacity {
26 |         return n;
   |                ^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
26 |         return n.try_into().unwrap();
```


## cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed `[T; n]` parameter to slice parameter; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0425]: cannot find value `m` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:28:15
   |
28 |     while a < m && b < n  {
   |               ^ help: a local variable with a similar name exists: `A`
error[E0425]: cannot find value `n` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:28:24
   |
28 |     while a < m && b < n  {
   |                        ^ help: a local variable with a similar name exists: `A`
error[E0277]: the trait bound `f32: Ord` is not satisfied
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:23:7
```


## cpp_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N/SMALLEST_POWER_OF_2_GREATER_THAN_OR_EQUAL_TO_N_emit.rs:27:9
   |
27 |         n >>= 1;
   |         ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> u32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## cpp_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY/SMALLEST_SUM_CONTIGUOUS_SUBARRAY_emit.rs:28:35
    |
 28 |             min_ending_here = arr[i];
    |                                   ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SORT_ARRAY_APPLYING_GIVEN_EQUATION

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SORT_ARRAY_APPLYING_GIVEN_EQUATION/SORT_ARRAY_APPLYING_GIVEN_EQUATION_emit.rs:23:13
    |
 23 |         arr[i] = A * arr[i] * arr[i] + B * arr[i] + C;
    |             ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SORT_ARRAY_TWO_HALVES_SORTED

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `a:i32 [i32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0596]: cannot borrow `*a` as mutable, as it is behind a `&` reference
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SORT_ARRAY_TWO_HALVES_SORTED/SORT_ARRAY_TWO_HALVES_SORTED_emit.rs:23:5
   |
23 |     a.sort_unstable();
   |     ^ `a` is a `&` reference, so it cannot be borrowed as mutable
   |
help: consider changing this to be a mutable reference
   |
22 | fn f_gold(a: &mut [i32], n: i32) {
   |               +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0596`.
```


## cpp_transcoder/SORT_EVEN_NUMBERS_ASCENDING_ORDER_SORT_ODD_NUMBERS_DESCENDING_ORDER_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SORT_EVEN_NUMBERS_ASCENDING_ORDER_SORT_ODD_NUMBERS_DESCENDING_ORDER_1/SORT_EVEN_NUMBERS_ASCENDING_ORDER_SORT_ODD_NUMBERS_DESCENDING_ORDER_1_emit.rs:24:16
    |
 24 |         if arr[i] % 2.0 == 1.0 {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SPLIT_ARRAY_ADD_FIRST_PART_END

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `std::ops::Range<u32>`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SPLIT_ARRAY_ADD_FIRST_PART_END/SPLIT_ARRAY_ADD_FIRST_PART_END_emit.rs:24:13
    |
 24 |         arr[0..n-1].rotate_left(1);
    |             ^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `std::ops::Range<u32>`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:362:1
    |
362 | unsafe impl<T> const SliceIndex<[T]> for ops::Range<usize> {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `std::ops::Range<usize>` implements `SliceIndex<[T]>`
```


## cpp_transcoder/STOOGE_SORT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/STOOGE_SORT/STOOGE_SORT_emit.rs:25:12
    |
 25 |     if arr[l] > arr[h] {
    |            ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M/SUBSEQUENCES_SIZE_THREE_ARRAY_WHOSE_SUM_DIVISIBLE_M_emit.rs:32:2
   |
21 | fn f_gold(a: [f32;2], n: f32, m: f32) -> i32 {
   |                                          --- expected `i32` because of return type
...
32 |  ans
   |  ^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:36
   |
30 |                 subset[i % 2][j] = subset[(i + 1) % 2][j - arr[i - 1] as usize] || subset[(i + 1) % 2][j];
   |                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:84
   |
30 |                 subset[i % 2][j] = subset[(i + 1) % 2][j - arr[i - 1] as usize] || subset[(i + 1) % 2][j];
   |                                                                                    ^^^^^^^^^^^^^^^^^^^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUBSET_SUM_PROBLEM_OSUM_SPACE/SUBSET_SUM_PROBLEM_OSUM_SPACE_emit.rs:30:36
```


## cpp_transcoder/SUM_AREA_RECTANGLES_POSSIBLE_ARRAY

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_AREA_RECTANGLES_POSSIBLE_ARRAY/SUM_AREA_RECTANGLES_POSSIBLE_ARRAY_emit.rs:26:15
    |
 26 |         if (a[i] == a[i + 1] || a[i] - a[i + 1] == 1) && !flag {
    |               ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_emit.rs:26:27
    |
 26 |              sum += min(x[i] - x[j], y[i] - y[j]).abs()
    |                           ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_emit.rs:26:12
   |
26 |         if sign {
   |            ^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_emit.rs:25:22
    |
 25 |             res += a[i] * a[i];
    |                      ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1/SUM_SERIES_ALTERNATE_SIGNED_SQUARES_AP_1_emit.rs:22:4
   |
21 | fn f_gold(n: i32, a: [f32;2]) -> i32 {
   |                                  --- expected `i32` because of return type
22 |    (n as f32) * ((a[0] * a[0]) - (a[(2 * n - 1) as usize] * a[(2 * n - 1) as usize])) /  (2 * n - 1) as f32
   |    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## cpp_transcoder/SUM_TWO_LARGE_NUMBERS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0599]: no method named `reverse` found for struct `String` in the current scope
    --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS/SUM_TWO_LARGE_NUMBERS_emit.rs:29:10
     |
  29 |     str1.reverse();
     |          ^^^^^^^
     |
help: there is a method `reserve` with a similar name, but with different arguments
    --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs:1205:5
     |
1205 |     pub fn reserve(&mut self, additional: usize) {
     |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
error[E0599]: no method named `reverse` found for struct `String` in the current scope
```


## cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0369]: cannot add `char` to `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_emit.rs:33:37
   |
33 |         str.push((sum % 10) as char + '0' as char);
   |                  ------------------ ^ ----------- char
   |                  |
   |                  char
error[E0369]: cannot add `char` to `char`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SUM_TWO_LARGE_NUMBERS_1/SUM_TWO_LARGE_NUMBERS_1_emit.rs:38:37
   |
38 |         str.push((sum % 10) as char + '0' as char);
   |                  ------------------ ^ ----------- char
```


## cpp_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
warning: unnecessary parentheses around assigned value
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs:24:19
   |
24 |     let mut xor = (set1 ^ set2);
   |                   ^           ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
24 -     let mut xor = (set1 ^ set2);
24 +     let mut xor = set1 ^ set2;
   |
```


## cpp_transcoder/TEMPLE_OFFERINGS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:16
   |
26 |             if temple_height[j] < temple_height[j+1] {
   |                ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:35
   |
26 |             if temple_height[j] < temple_height[j+1] {
   |                                   ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:33:16
```


## cpp_transcoder/TILING_WITH_DOMINOES

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[{integer}]` cannot be indexed by `i32`
   --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TILING_WITH_DOMINOES/TILING_WITH_DOMINOES_emit.rs:25:18
    |
 25 |         a.push(a[i - 2] + 2 * b[i - 1]);
    |                  ^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[{integer}]>` is not implemented for `i32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0435]: attempt to use a non-constant value in a constant
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_emit.rs:24:26
   |
23 | fn f_gold(n: i32) -> i32 {
   |           - this would need to be a `const`
24 |     let mut dp = [[0u32; n as usize + 1]; 10];
   |                          ^
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0435`.
```


## cpp_transcoder/TURN_OFF_THE_RIGHTMOST_SET_BIT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/TURN_OFF_THE_RIGHTMOST_SET_BIT/TURN_OFF_THE_RIGHTMOST_SET_BIT_emit.rs:25:5
   |
24 | fn f_gold(n: u32) -> i32 {
   |                      --- expected `i32` because of return type
25 |     n & (n-1)
   |     ^^^^^^^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
25 |     (n & (n-1)).try_into().unwrap()
   |     +         +++++++++++++++++++++
```


## cpp_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/cpp_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER_emit.rs:29:9
   |
29 |         n &= n - 1;
   |         ^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
25 | fn f_gold(mut n: u32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## go_transcoder/BINARY_SEARCH

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/BINARY_SEARCH/BINARY_SEARCH_emit.rs:24:16
    |
 24 |         if arr[mid] == x {return mid as i32;}
    |                ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## go_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `h`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:25:20
   |
25 |     if h == 12.0 { h = 0.0; }
   |                    ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut h: f32, m: f32) -> i32 {
   |           +++
error[E0384]: cannot assign to immutable argument `m`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND/CALCULATE_ANGLE_HOUR_HAND_MINUTE_HAND_emit.rs:26:20
```


## go_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_emit.rs:29:5
   |
23 | fn f_gold(str: &str) -> i32 {
   |                         --- expected `i32` because of return type
...
29 |     sum == n as i32 - 1 || sum == 1
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHECK_GIVEN_CIRCLE_LIES_COMPLETELY_INSIDE_RING_FORMED_TWO_CONCENTRIC_CIRCLES

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_GIVEN_CIRCLE_LIES_COMPLETELY_INSIDE_RING_FORMED_TWO_CONCENTRIC_CIRCLES/CHECK_GIVEN_CIRCLE_LIES_COMPLETELY_INSIDE_RING_FORMED_TWO_CONCENTRIC_CIRCLES_emit.rs:28:5
   |
22 | fn f_gold(r: i32, R: i32, r1: i32, x1: i32, y1: i32) -> i32 {
   |                                                         --- expected `i32` because of return type
...
28 |     dis - r1 >= R && dis + r1 <= r
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:23:16
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |     if x == 1 {
23 |         return y == 1;
   |                ^^^^^^ expected `i32`, found `bool`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_emit.rs:29:5
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
```


## go_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1_emit.rs:25:5
   |
22 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
...
25 |     res1 == res2
   |     ^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_11_NOT_emit.rs:29:5
   |
21 | fn f_gold(str: &str) -> i32 {
   |                         --- expected `i32` because of return type
...
29 |     (odd_dig_sum - even_dig_sum) % 11 == 0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_3_NOT_emit.rs:26:6
   |
21 | fn f_gold(str : &str) -> i32 {
   |                          --- expected `i32` because of return type
...
26 |      digit_sum % 3 == 0
   |      ^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_4_NOT_emit.rs:27:16
   |
23 | fn f_gold(str : &str) -> i32 {
   |                          --- expected `i32` because of return type
...
27 |         return (str.chars().nth(0).unwrap() as u8 - b'0') % 4 == 0;
   |                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
warning: unnecessary parentheses around block return value
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_9_NOT_emit.rs:26:5
   |
26 |     (digit_sum % 9 == 0)
   |     ^                  ^
   |
   = note: `#[warn(unused_parens)]` (part of `#[warn(unused)]`) on by default
help: remove these parentheses
   |
26 -     (digit_sum % 9 == 0)
26 +     digit_sum % 9 == 0
   |
```


## go_transcoder/CHECK_LINE_PASSES_ORIGIN

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_LINE_PASSES_ORIGIN/CHECK_LINE_PASSES_ORIGIN_emit.rs:26:5
   |
21 | fn f_gold(x1: i32, y1: i32, x2: i32, y2: i32) -> i32 {
   |                                                  --- expected `i32` because of return type
...
26 |     x1 * (y2 - y1) == y1 * (x2 - x1)
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD/CHECK_NUMBER_POWER_K_USING_BASE_CHANGING_METHOD_emit.rs:32:16
   |
32 |             if one_seen {
   |                ^^^^^^^^ expected `bool`, found integer
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHECK_OCCURRENCES_CHARACTER_APPEAR_TOGETHER

- Status: missing-llm
- CSV compile expected: True
- Source note: missing LLM output block
- O0: failed

```text
no emit source
```


## go_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_emit.rs:22:5
   |
21 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
22 |     n % 2 == 0
   |     ^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1/CHECK_WHETHER_GIVEN_NUMBER_EVEN_ODD_1_emit.rs:22:5
   |
21 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
22 |     n % 2 == 0
   |     ^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed `[T; n: Ty]` parameter to slice plus size parameter; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0255]: the name `min` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/go_transcoder/CHOCOLATE_DISTRIBUTION_PROBLEM/CHOCOLATE_DISTRIBUTION_PROBLEM_emit.rs:19:5
   |
 9 | fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
   | ----------------------------- previous definition of the value `min` here
...
19 | use std::cmp::min;
   |     ^^^^^^^^^^^^^ `min` reimported here
   |
   = note: `min` must be defined only once in the value namespace of this module
help: you can use `as` to change the binding name of the import
   |
```


## go_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2/COUNT_PAIRS_TWO_SORTED_ARRAYS_WHOSE_SUM_EQUAL_GIVEN_VALUE_X_2_emit.rs:38:5
   |
23 | fn f_gold (arr1: Vec<f32>, arr2: Vec<f32>, m: f32, n: f32, x: f32) -> i32 {
   |                                                                       --- expected `i32` because of return type
...
38 |     count
   |     ^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS/DETECT_IF_TWO_INTEGERS_HAVE_OPPOSITE_SIGNS_emit.rs:22:5
   |
21 | fn f_gold(x: i32, y: i32) -> i32 {
   |                              --- expected `i32` because of return type
22 |     x ^ y < 0
   |     ^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM/DYNAMIC_PROGRAMMING_SET_10_0_1_KNAPSACK_PROBLEM_emit.rs:30:20
    |
 30 |         return val[n as u32 - 1] + f_gold(W - wt[n as u32 - 1], wt, val, n - 1).max(f_gold(W, wt, val, n - 1));
    |                    ^^^^^^^^^^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## go_transcoder/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1_emit.rs:28:9
   |
28 |         n -= 3;
   |         ^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
22 | fn f_gold(mut n: i32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## go_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:23:24
   |
22 | fn f_gold(p: &[f32;2], i: u32, j: u32) -> i32  {
   |                                           --- expected `i32` because of return type
23 |     if i == j { return 0.0; }
   |                        ^^^ expected `i32`, found floating-point number
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION/DYNAMIC_PROGRAMMING_SET_8_MATRIX_CHAIN_MULTIPLICATION_emit.rs:27:65
    |
 27 |         let count =   f_gold(p, i, k) + f_gold(p, k + 1, j) + p[i - 1] * p[k] * p[j];
    |                                                                 ^^^^^ slice indices are of type `usize` or ranges of `usize`
```


## go_transcoder/EFFICIENT_WAY_CHECK_WHETHER_N_TH_FIBONACCI_NUMBER_MULTIPLE_10

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/EFFICIENT_WAY_CHECK_WHETHER_N_TH_FIBONACCI_NUMBER_MULTIPLE_10/EFFICIENT_WAY_CHECK_WHETHER_N_TH_FIBONACCI_NUMBER_MULTIPLE_10_emit.rs:22:5
   |
21 |  fn f_gold(n: i32) -> i32 {
   |                       --- expected `i32` because of return type
22 |     (n as f32) % 15.0 == 0.0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[i32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY/ELEMENTS_TO_BE_ADDED_SO_THAT_ALL_ELEMENTS_OF_A_RANGE_ARE_PRESENT_IN_ARRAY_emit.rs:26:16
    |
 26 |         if arr[i] != arr[i+1] && arr[i] != arr[i+1] - 1  {
    |                ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[i32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## go_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM/FAST_MULTIPLICATION_METHOD_WITHOUT_USING_MULTIPLICATION_OPERATOR_RUSSIAN_PEASANTS_ALGORITHM_emit.rs:32:5
   |
21 | fn f_gold(a: u32, b: u32) -> u32 {
   |                              --- expected `u32` because of return type
...
32 |     res
   |     ^^^ expected `u32`, found `usize`
   |
help: you can convert a `usize` to a `u32` and panic if the converted value doesn't fit
   |
32 |     res.try_into().unwrap()
```


## go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:25:20
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
   |                                    --- expected `i32` because of return type
...
25 |             return i;
   |                    ^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY/FIND_A_FIXED_POINT_IN_A_GIVEN_ARRAY_emit.rs:29:5
   |
21 | fn f_gold(arr: [f32;2], n: f32) -> i32 {
```


## go_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `A:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the trait bound `f32: Ord` is not satisfied
   --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1/FIND_A_TRIPLET_THAT_SUM_TO_A_GIVEN_VALUE_1_emit.rs:25:7
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


## go_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1/FIND_INDEX_OF_AN_EXTRA_ELEMENT_PRESENT_IN_ONE_SORTED_ARRAY_1_emit.rs:34:5
   |
21 | fn f_gold(arr1: &[f32;2], arr2: &[f32;2]) -> i32 {
   |                                              --- expected `i32` because of return type
...
34 |     index
   |     ^^^^^ expected `i32`, found `usize`
   |
help: you can convert a `usize` to an `i32` and panic if the converted value doesn't fit
   |
34 |     index.try_into().unwrap()
```


## go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: u32, high: u32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if high < low {
24 |         return arr[0];
   |                ^^^^^^ expected `i32`, found `f32`
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY/FIND_MINIMUM_ELEMENT_IN_A_SORTED_AND_ROTATED_ARRAY_emit.rs:27:20
    |
 27 |         return arr[low];
```


## go_transcoder/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE_emit.rs:30:16
   |
30 |     while i <= (n as f32).sqrt()  {
   |                ^^^^^^^^^^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE_emit.rs:30:13
   |
30 |     while i <= (n as f32).sqrt()  {
   |             ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```


## go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:18
   |
26 |     while i*i <= num as f32  {
   |                  ^^^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_MINIMUM_SUM_FACTORS_NUMBER/FIND_MINIMUM_SUM_FACTORS_NUMBER_emit.rs:26:15
   |
26 |     while i*i <= num as f32  {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```


## go_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N/FIND_REPEATING_ELEMENT_SORTED_ARRAY_SIZE_N_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if low > high {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1/FIND_ROTATION_COUNT_ROTATED_SORTED_ARRAY_1_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
23 |     if high < low {
24 |         return 0.0;
   |                ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER/FIND_SUM_EVEN_FACTORS_NUMBER_emit.rs:35:13
   |
35 |             n /= i as i32;
   |             ^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
25 | fn f_gold(mut n: i32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## go_transcoder/FIND_THE_MAXIMUM_ELEMENT_IN_AN_ARRAY_WHICH_IS_FIRST_INCREASING_AND_THEN_DECREASING

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_THE_MAXIMUM_ELEMENT_IN_AN_ARRAY_WHICH_IS_FIRST_INCREASING_AND_THEN_DECREASING/FIND_THE_MAXIMUM_ELEMENT_IN_AN_ARRAY_WHICH_IS_FIRST_INCREASING_AND_THEN_DECREASING_emit.rs:29:5
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32) -> i32 {
   |                                                 --- expected `i32` because of return type
...
29 |     max
   |     ^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_emit.rs:26:28
   |
21 | fn f_gold(a1: [f32;2], a2: [f32;2], a3: [f32;2], n1: f32, n2: f32, n3: f32, sum: f32) -> i32 {
   |                                                                                          --- expected `i32` because of return type
...
26 |                     return 1.0;
   |                            ^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K/FIND_THREE_ELEMENT_FROM_DIFFERENT_THREE_ARRAYS_SUCH_THAT_THAT_A_B_C_K_emit.rs:31:5
   |
21 | fn f_gold(a1: [f32;2], a2: [f32;2], a3: [f32;2], n1: f32, n2: f32, n3: f32, sum: f32) -> i32 {
```


## go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_1_emit.rs:25:13
   |
25 |             n >>= 1;
   |             ^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```


## go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2/FIND_WHETHER_A_GIVEN_NUMBER_IS_A_POWER_OF_4_OR_NOT_2_emit.rs:23:5
   |
22 | fn f_gold(n: u32) -> i32 {
   |                      --- expected `i32` because of return type
23 |     n != 0 && ((n & (n - 1)) == 0) && n & 0xAAAAAAAA == 0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/FIND_WHETHER_GIVEN_INTEGER_POWER_3_NOT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FIND_WHETHER_GIVEN_INTEGER_POWER_3_NOT/FIND_WHETHER_GIVEN_INTEGER_POWER_3_NOT_emit.rs:25:12
   |
22 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
25 |     return x == 0f32;
   |            ^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/FLOOR_IN_A_SORTED_ARRAY_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_emit.rs:23:16
   |
21 | fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
   |                                                         --- expected `i32` because of return type
22 |     if low > high {
23 |         return -1.;
   |                ^^^ expected `i32`, found floating-point number
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/HARDY_RAMANUJAN_THEOREM

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:18
   |
31 |     while i*i <= n as f32 {
   |                  ^^^^^^^^ expected integer, found `f32`
error[E0277]: can't compare `{integer}` with `f32`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/HARDY_RAMANUJAN_THEOREM/HARDY_RAMANUJAN_THEOREM_emit.rs:31:15
   |
31 |     while i*i <= n as f32 {
   |               ^^ no implementation for `{integer} < f32` and `{integer} > f32`
   |
   = help: the trait `PartialOrd<f32>` is not implemented for `{integer}`
```


## go_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP/HOW_TO_CHECK_IF_A_GIVEN_ARRAY_REPRESENTS_A_BINARY_HEAP_emit.rs:26:12
    |
 26 |     if arr[i] >= arr[2 * i + 1] && arr[i] >= arr[2 * i + 2] &&
    |            ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## go_transcoder/K_TH_DIGIT_RAISED_POWER_B

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
   --> /root/es/vert/vert/rust_funcs/go_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_emit.rs:23:23
    |
 23 |     let mut p = a.pow(b);
    |                   --- ^ expected `u32`, found `i32`
    |                   |
    |                   arguments to this method are incorrect
    |
note: method defined here
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/mod.rs:295:5
    |
295 | /     int_impl! {
```


## go_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:33:20
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
   |                                            --- expected `i32` because of return type
...
33 |             return arr[i];
   |                    ^^^^^^ expected `i32`, found `f32`
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY/K_TH_DISTINCT_OR_NON_REPEATING_ELEMENT_IN_AN_ARRAY_emit.rs:36:1
   |
22 | fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
```


## go_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the trait bound `f32: From<i32>` is not satisfied
  --> /root/es/vert/vert/rust_funcs/go_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER/K_TH_PRIME_FACTOR_GIVEN_NUMBER_emit.rs:29:20
   |
29 |     while i * i <= f32::from(n)  {
   |                    ^^^ the trait `From<i32>` is not implemented for `f32`
   |
   = help: the following other types implement trait `From<T>`:
             `f32` implements `From<bool>`
             `f32` implements `From<i16>`
             `f32` implements `From<i8>`
             `f32` implements `From<u16>`
             `f32` implements `From<u8>`
```


## go_transcoder/LOWER_INSERTION_POINT

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-mutated/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/LOWER_INSERTION_POINT/LOWER_INSERTION_POINT_emit.rs:25:23
    |
 25 |     } else if x > arr[n-1]  {
    |                       ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## go_transcoder/MAXIMUM_NUMBER_OF_SQUARES_THAT_CAN_BE_FIT_IN_A_RIGHT_ANGLE_ISOSCELES_TRIANGLE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/MAXIMUM_NUMBER_OF_SQUARES_THAT_CAN_BE_FIT_IN_A_RIGHT_ANGLE_ISOSCELES_TRIANGLE/MAXIMUM_NUMBER_OF_SQUARES_THAT_CAN_BE_FIT_IN_A_RIGHT_ANGLE_ISOSCELES_TRIANGLE_emit.rs:30:5
   |
29 | fn f_gold(b: f32, m: f32) -> i32 {
   |                              --- expected `i32` because of return type
30 |     (b/m - 1.0) * (b/m) / 2.0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `arr:i32 [f32;2]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY/MAXIMUM_POSSIBLE_DIFFERENCE_TWO_SUBSETS_ARRAY_emit.rs:28:20
    |
 28 |             if arr[i] == arr[j] {
    |                    ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## go_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
  --> /root/es/vert/vert/rust_funcs/go_transcoder/MEDIAN_OF_TWO_SORTED_ARRAYS/MEDIAN_OF_TWO_SORTED_ARRAYS_emit.rs:23:16
   |
23 | fn f_gold(ar1: [i32], ar2: [i32], n: i32) -> i32 {
   |                ^^^^^ doesn't have a size known at compile-time
   |
   = help: the trait `Sized` is not implemented for `[i32]`
help: function arguments must have a statically known size, borrowed slices always have a known size
   |
23 | fn f_gold(ar1: &[i32], ar2: [i32], n: i32) -> i32 {
   |                +
error[E0277]: the size for values of type `[i32]` cannot be known at compilation time
```


## go_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1/MINIMUM_LENGTH_SUBARRAY_SUM_GREATER_GIVEN_VALUE_1_emit.rs:34:29
    |
 34 |             curr_sum += arr[end];
    |                             ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## go_transcoder/POSSIBLE_TO_MAKE_A_DIVISIBLE_BY_3_NUMBER_USING_ALL_DIGITS_IN_AN_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/POSSIBLE_TO_MAKE_A_DIVISIBLE_BY_3_NUMBER_USING_ALL_DIGITS_IN_AN_ARRAY/POSSIBLE_TO_MAKE_A_DIVISIBLE_BY_3_NUMBER_USING_ALL_DIGITS_IN_AN_ARRAY_emit.rs:26:5
   |
21 | fn f_gold(arr: &[i32;2], n: i32) -> i32 {
   |                                     --- expected `i32` because of return type
...
26 |     remainder == 0
   |     ^^^^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE/PROGRAM_CHECK_ARRAY_SORTED_NOT_ITERATIVE_RECURSIVE_emit.rs:26:12
    |
 26 |     if arr[n-1] < arr[n-2] {
    |            ^^^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## go_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_emit.rs:34:5
   |
21 | fn f_gold(x: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
34 |     sum == temp
   |     ^^^^^^^^^^^ expected `i32`, found `bool`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING

- Status: missing-llm
- CSV compile expected: True
- Source note: missing LLM output block
- O0: failed

```text
no emit source
```


## go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:24:16
   |
22 | fn f_gold(arr: [f32;2], low: f32, high: f32, key: f32) -> i32 {
   |                                                           --- expected `i32` because of return type
23 |     if high < low {
24 |         return -1.0;
   |                ^^^^ expected `i32`, found floating-point number
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY/SEARCH_INSERT_AND_DELETE_IN_A_SORTED_ARRAY_emit.rs:31:23
   |
31 |         return f_gold(&arr, mid + 1.0, high, key);
```


## go_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; repaired malformed array parameter `a:i32 [f32]`; repaired malformed array parameter `b:i32 [f32]`; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0433]: failed to resolve: use of undeclared type `Ordering`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS/SMALLEST_DIFFERENCE_PAIR_VALUES_TWO_UNSORTED_ARRAYS_emit.rs:35:18
   |
35 |             Some(Ordering::Less) => i += 1,
   |                  ^^^^^^^^ use of undeclared type `Ordering`
   |
help: consider importing one of these enums
   |
19 + use std::cmp::Ordering;
   |
19 + use std::sync::atomic::Ordering;
   |
```


## go_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0277]: the type `[f32]` cannot be indexed by `u32`
   --> /root/es/vert/vert/rust_funcs/go_transcoder/SMALLEST_SUM_CONTIGUOUS_SUBARRAY/SMALLEST_SUM_CONTIGUOUS_SUBARRAY_emit.rs:25:59
    |
 25 |         if min_ending_here > 0.0  { min_ending_here = arr[i]; }
    |                                                           ^ slice indices are of type `usize` or ranges of `usize`
    |
    = help: the trait `SliceIndex<[f32]>` is not implemented for `u32`
help: the following other types implement trait `SliceIndex<T>`
   --> /root/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/index.rs:214:1
    |
214 | unsafe impl<T> const SliceIndex<[T]> for usize {
    | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ `usize` implements `SliceIndex<[T]>`
```


## go_transcoder/SUM_FACTORS_NUMBER_1

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error: cast cannot be followed by a method call
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:23:16
   |
23 |     while i <= n as f32.sqrt() {
   |                ^^^^^^^^
   |
help: try surrounding the expression in parentheses
   |
23 |     while i <= (n as f32).sqrt() {
   |                +        +
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_emit.rs:27:13
```


## go_transcoder/SUM_PAIRWISE_PRODUCTS_2

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_PAIRWISE_PRODUCTS_2/SUM_PAIRWISE_PRODUCTS_2_emit.rs:37:5
   |
36 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
37 |     (n as f32 * (n + 1) as f32 * (n + 2) as f32 * (3 * n + 1) as f32) / 24.0
   |     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ expected `i32`, found `f32`
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0308`.
```


## go_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_emit.rs:26:12
   |
26 |         if sign {
   |            ^^^^ expected `bool`, found integer
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_emit.rs:36:5
   |
20 | fn f_gold(n: i32) -> f64 {
   |                      --- expected `f64` because of return type
...
36 |     res
```


## go_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS/SUM_SUBSETS_SET_FORMED_FIRST_N_NATURAL_NUMBERS_emit.rs:26:5
   |
22 | fn f_gold(n: i32) -> i32 {
   |                      --- expected `i32` because of return type
...
26 |     result as u64
   |     ^^^^^^^^^^^^^ expected `i32`, found `u64`
   |
help: you can convert a `u64` to an `i32` and panic if the converted value doesn't fit
   |
26 |     (result as u64).try_into().unwrap()
```


## go_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0308]: mismatched types
  --> /root/es/vert/vert/rust_funcs/go_transcoder/SWAP_BITS_IN_A_GIVEN_NUMBER/SWAP_BITS_IN_A_GIVEN_NUMBER_emit.rs:27:5
   |
21 | fn f_gold(x: u32, p1: u32, p2: u32, n: u32) -> i32 {
   |                                                --- expected `i32` because of return type
...
27 |     result
   |     ^^^^^^ expected `i32`, found `u32`
   |
help: you can convert a `u32` to an `i32` and panic if the converted value doesn't fit
   |
27 |     result.try_into().unwrap()
```


## go_transcoder/TEMPLE_OFFERINGS

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; reconstructed missing f_gold header from original benchmark signature; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/go_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:16
   |
26 |             if temple_height[j] < temple_height[j + 1] {
   |                ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/go_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:26:35
   |
26 |             if temple_height[j] < temple_height[j + 1] {
   |                                   ^^^^^^^^^^^^^ help: a local variable with a similar name exists: `templeHeight`
error[E0425]: cannot find value `temple_height` in this scope
  --> /root/es/vert/vert/rust_funcs/go_transcoder/TEMPLE_OFFERINGS/TEMPLE_OFFERINGS_emit.rs:33:16
```


## go_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1

- Status: failed
- CSV compile expected: True
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0252]: the name `i32` is defined multiple times
  --> /root/es/vert/vert/rust_funcs/go_transcoder/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1/TOTAL_NUMBER_OF_NON_DECREASING_NUMBERS_WITH_N_DIGITS_1_emit.rs:21:5
   |
20 | use std::i32;
   |     -------- previous import of the module `i32` here
21 | use std::i32;
   |     ^^^^^^^^ `i32` reimported here
   |
   = note: `i32` must be defined only once in the type namespace of this module
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0252`.
```


## go_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER

- Status: failed
- CSV compile expected: False
- Source note: out-rwasm-bolero/src/main.rs; added crate-level allow attributes; added #[no_mangle] to top-level non-main functions where possible
- O0: failed

```text
error[E0384]: cannot assign to immutable argument `n`
  --> /root/es/vert/vert/rust_funcs/go_transcoder/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER/WRITE_A_C_PROGRAM_TO_FIND_THE_PARITY_OF_AN_UNSIGNED_INTEGER_emit.rs:25:9
   |
25 |         n = n & (n - 1);
   |         ^^^^^^^^^^^^^^^ cannot assign to immutable argument
   |
help: consider making this binding mutable
   |
21 | fn f_gold(mut n: u32) -> i32 {
   |           +++
error: aborting due to 1 previous error
For more information about this error, try `rustc --explain E0384`.
```
