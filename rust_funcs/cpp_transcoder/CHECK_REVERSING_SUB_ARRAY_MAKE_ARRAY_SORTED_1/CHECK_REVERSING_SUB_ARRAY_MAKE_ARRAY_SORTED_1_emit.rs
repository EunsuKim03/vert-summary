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
fn f_gold(arr: [f32;2], n: u32) -> i32 {
    if n == 1 {
        return 1;
    }
    let mut i = 1;
    while i < n && arr[i - 1] < arr[i] {
        i += 1;
    }
    if i == n {
        return 1;
    }
    let mut j = i;
    while arr[j] < arr[j - 1] {
        if i > 1 && arr[j] < arr[i - 2] {
            return 0;
        }
        j += 1;
    }
    if j == n {
        return 1;
    }
    let mut k = j;
    if arr[k] < arr[i - 1] {
        return 0;
    }
    while k > 1 && k < n {
        if arr[k] < arr[k - 1] {
            return 0;
        }
        k += 1;
    }
    1
}
