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
fn f_gold(arr: [f32;2], low: f32, high: f32, key: f32) -> i32 {
    if high < low { 
        return -1.0;
    }
    let mid = (low + high) / 2.0; 
    if key == arr[mid as usize] {
        return mid;
    }
    if key > arr[mid as usize] {
        return f_gold(&arr, mid + 1.0, high, key);
    }
    return f_gold(&arr, low, mid - 1.0, key);
}
