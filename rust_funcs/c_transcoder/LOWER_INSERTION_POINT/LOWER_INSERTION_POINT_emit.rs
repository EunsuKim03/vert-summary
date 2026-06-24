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
fn f_gold(arr:[f32;2], n:u32, x:f32) -> i32 {
    if x < arr[0] {
        return 0; 
    } else if x > arr[n-1]  {
        return n;
    }
    let mut lower_pnt = 0;
    let mut i = 1;
    while i < n && arr[i] < x {
        lower_pnt = i;
        i *= 2;
    }
    while lower_pnt < n && arr[lower_pnt] < x {
        lower_pnt += 1;
    }
    lower_pnt
}
