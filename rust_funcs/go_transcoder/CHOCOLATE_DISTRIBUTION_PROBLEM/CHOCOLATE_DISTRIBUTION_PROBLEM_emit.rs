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

use std::cmp::min;
use std::mem;

#[no_mangle]
fn f_gold(mut arr: &mut [i32], n: i32, m: i32) -> i32 {
    if m == 0 || n == 0 {
        return 0;
    }
    arr.sort();
    let mut min_diff = i32::MAX;
    let mut first = 0;
    let mut last = 0;
    for i in 0..n - m + 1 {
        let diff = arr[i + m - 1] - arr[i];
        if diff < min_diff {
            min_diff = diff;
            first = i;
            last = i + m - 1;
        }
    }
    arr[last] - arr[first]
}
