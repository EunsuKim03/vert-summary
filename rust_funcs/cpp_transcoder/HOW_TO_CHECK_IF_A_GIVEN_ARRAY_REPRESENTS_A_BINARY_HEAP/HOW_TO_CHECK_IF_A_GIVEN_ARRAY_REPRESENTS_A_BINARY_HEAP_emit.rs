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

use std::vec;

#[no_mangle]
fn f_gold(arr: &[f32;2], mut i: f32, n: f32) -> i32 {
    if i > (n - 2.0) / 2.0 {return 1;}
    if arr[i as u32] >= arr[(2.0 * i + 1.0) as u32] && arr[i as u32] >= arr[(2.0 * i + 2.0) as u32] && f_gold(arr, 2.0 * i + 1.0, n) == 1 && f_gold(arr, 2.0 * i + 2.0, n) == 1 {return 1;}
    return 0;
}
