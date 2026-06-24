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
fn f_gold(arr: [f32;2], i: u32, n: u32) -> i32 {
    if i > (n - 2) / 2 {
        return 1;
    }
    if arr[i] >= arr[2 * i + 1] && arr[i] >= arr[2 * i + 2] && 
        f_gold(arr, 2 * i + 1, n) == 1 && f_gold(arr, 2 * i + 2, n) == 1 {
        return 1;
    }
    0
}
