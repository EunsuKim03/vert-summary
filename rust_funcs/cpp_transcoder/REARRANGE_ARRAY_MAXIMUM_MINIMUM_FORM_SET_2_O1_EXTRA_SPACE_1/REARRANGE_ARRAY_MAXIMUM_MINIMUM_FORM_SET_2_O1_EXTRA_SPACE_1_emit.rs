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

use std::f32::*;

#[no_mangle]
fn f_gold(arr: &mut [f32], n: f32) {
    let mut max_ele = *arr.last().unwrap(); 
    let mut min_ele = *arr.first().unwrap();
    for i in 0..n as usize {
        if i % 2 == 0 {
            arr[i] = max_ele;
            max_ele -= 1.0;
        } else {
            arr[i] = min_ele;
            min_ele += 1.0;
        }
    }
}
