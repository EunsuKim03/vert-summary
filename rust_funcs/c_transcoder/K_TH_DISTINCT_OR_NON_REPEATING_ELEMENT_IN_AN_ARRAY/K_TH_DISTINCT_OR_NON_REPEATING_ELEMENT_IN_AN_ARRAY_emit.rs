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
fn f_gold(arr: [f32;2], n: i32, k: i32) -> i32 {
    let mut dist_count = 0;
    for i in 0..n as usize {
        let mut j = 0;  
        while j < n as usize && arr[j] == arr[i]  {
            j += 1;
        }
        if j == n as usize {
            dist_count += 1;
        }
        if dist_count == k {
            return arr[i];
        }
    }
-1.0  
}
