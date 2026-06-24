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

use std::cmp;

#[no_mangle]
fn f_gold(arr: [i32;2], dep: [i32;2], n: i32) -> i32 {
    let mut arr = arr.to_vec();
    let mut dep = dep.to_vec();
    arr.sort();
    dep.sort();
    let mut plat_needed = 1; 
    let mut result = 1;
    let mut i = 1; 
    let mut j = 0;
    while i < n as usize && j < n as usize {
        if arr[i] <= dep[j] {
            plat_needed += 1;
            i += 1;
            result = cmp::max(result, plat_needed);
        } else {
            plat_needed -= 1;
            j += 1;
        }
    }
    result
}
