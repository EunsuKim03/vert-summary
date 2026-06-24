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

use std::slice;

#[no_mangle]
fn f_gold(arr: &mut [i32], n: i32) -> i32 {
    let mut arr = &mut arr[0..n as usize];
    arr.sort();
    let mut diff = i32::MAX;
    for i in 0..n as usize-1 {
        if arr[i+1] - arr[i] < diff {
            diff = arr[i+1] - arr[i];
        }
    }
    diff
}
