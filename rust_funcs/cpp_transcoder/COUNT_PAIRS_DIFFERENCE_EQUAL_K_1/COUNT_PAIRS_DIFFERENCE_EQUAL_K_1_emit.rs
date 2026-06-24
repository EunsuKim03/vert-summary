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

use std::collections::HashMap;

#[no_mangle]
fn f_gold(arr: &mut [f32], n: u32, k: f32) -> i32 { 
let mut count = 0;
arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
let mut l = 0; 
let mut r = 0;
while r < n {
    match arr[r] - arr[l] {
        d if d == k => {
            count += 1;
            l += 1;
            r += 1;
        }
        d if d > k => l += 1,
        _ => r += 1
    }
}
count
}
