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
fn f_gold(mut arr: [i32;2], n: i32) -> i32 {
let half_sum:f32 = arr.iter().sum::<i32>() as f32 / 2.0;  
arr.sort_by(|a,b| b.cmp(a));
let mut res = 0;
let mut curr_sum:f32 = 0.0;
for num in arr.iter() {
    curr_sum += *num as f32;
    res += 1;
if curr_sum > half_sum  { return res; }   
}
res
}
