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
fn f_gold(mut arr: [f32;2], mut left: f32, mut right: f32) -> i32 {
    if left <= right {
        let mid: f32 = (left + right) / 2.0;
        if arr[mid as usize - 1] < arr[mid as usize] && arr[mid as usize] > arr[mid as usize + 1] {
            return mid; 
        }
        if arr[mid as usize] < arr[mid as usize + 1]  {
            return f_gold(arr, mid + 1.0, right);
        } else {
            return f_gold(arr, left, mid - 1.0);
        }
    }
    -1.0
}
