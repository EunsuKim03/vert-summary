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

use std::cmp::Ordering;

#[no_mangle]
fn f_gold(arr: &mut [f32], N: f32) -> i32 {
    if N < 3.0 {
        return 0.0;  
    }
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    for i in 0..(N-2.0) as usize {
        if arr[i] + arr[i+1] > arr[i+2] {
            return 1.0;
        }
    }
    0.0
}
