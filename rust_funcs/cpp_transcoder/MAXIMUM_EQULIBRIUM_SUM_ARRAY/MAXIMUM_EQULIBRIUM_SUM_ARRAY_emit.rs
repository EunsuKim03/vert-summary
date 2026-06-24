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

use std::f32;

#[no_mangle]
fn f_gold(arr: [f32;2], n: i32) -> i32 {
let mut res = f32::NEG_INFINITY;
for i in 0..n {
    let mut prefix_sum = arr[i as usize];
    for j in 0..i {
        prefix_sum += arr[j as usize];
    }
    let mut suffix_sum = arr[i as usize];
    for j in (n-1)..i {
        suffix_sum += arr[j as usize];
    }
    if prefix_sum == suffix_sum {
        res = res.max(prefix_sum);
    } 
}
res as i32
}
