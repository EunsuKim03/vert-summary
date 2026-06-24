#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]
#[no_mangle]
fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
#[no_mangle]
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
#[no_mangle]
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
#[no_mangle]
fn len(arr: &[i32]) -> usize {arr.len()}
#[no_mangle]
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


#[no_mangle]
fn f_gold(a: &mut [i32], n: i32) -> i32 {
   let mut final_sequence = vec![];
   a.sort();
   for i in 0..n/2  {
       final_sequence.push(a[i as usize]);
       final_sequence.push(a[(n - i - 1) as usize]);
   }
   let mut maximum_sum = 0;
   for i in 0..(n - 1) as usize {
       maximum_sum = maximum_sum + (final_sequence[i] - final_sequence[i + 1]).abs();
   }
   maximum_sum = maximum_sum + (final_sequence[(n - 1) as usize] - final_sequence[0]).abs();
   maximum_sum 
}
