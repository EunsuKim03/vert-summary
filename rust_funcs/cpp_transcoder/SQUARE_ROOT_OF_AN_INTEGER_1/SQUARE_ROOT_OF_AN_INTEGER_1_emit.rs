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
fn f_gold(x: i32) -> i32 {
    if x == 0 || x == 1 {
        return x;
    }
    let mut start = 1;
    let mut end = x;
    let mut ans = 0;
    while start <= end {
        let mid = (start + end) / 2;
        if mid * mid == x {
            return mid;
        }
        if mid * mid < x {
            start = mid + 1;
            ans = mid;
        } else {
            end = mid - 1; 
        }
    }
    ans
}
