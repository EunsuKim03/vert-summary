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
fn f_gold(n: i32, k: i32) -> i32 {
    let mut p = 1i32;
    if k % 2 != 0 {p = -1}
    let n = n as f32;
    let k = k as f32;
    let calc = (n - 1.0).powf(k) + p as f32 * (n - 1.0) as f32;
    let res = (calc / n) as i32;
    res
}
