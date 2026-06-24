#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]
use std::cmp::Ordering;

#[no_mangle]
fn min(x: i32, y: i32) -> i32 {
    if x < y { x } else { y } 
}

#[no_mangle]
fn max(x: i32, y: i32) -> i32 {
    if x > y { x } else { y }
}

#[no_mangle]
fn cmpfunc(a: &i32, b: &i32) -> Ordering {
    a.cmp(b)
}

#[no_mangle]
fn len(arr: &[i32]) -> usize {
    arr.len()
}

#[no_mangle]
fn sort(arr: &mut [i32]) {
    arr.sort_by(cmpfunc);
}

#[no_mangle]
fn f_gold(n: i32) -> i32 {
    (n as f32 * (n + 1) as f32 * (n + 2) as f32 * (3 * n + 1) as f32) / 24.0 
}
