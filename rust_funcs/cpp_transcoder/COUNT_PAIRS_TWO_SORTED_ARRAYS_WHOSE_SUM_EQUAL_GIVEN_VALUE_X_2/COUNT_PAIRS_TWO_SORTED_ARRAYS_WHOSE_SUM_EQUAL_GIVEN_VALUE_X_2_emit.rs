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

use std::fs::File;
use std::io::prelude::*;

#[no_mangle]
fn f_gold(arr1: [i32;2], arr2: [i32;2], m: i32, n: i32, x: i32) -> i32 {
    let mut count = 0;
    let mut l = 0;
    let mut r = n - 1;
    while l < m && r >= 0 {
        if arr1[l as usize] + arr2[r as usize] == x {
            l += 1;
            r -= 1;
            count += 1;
        } else if arr1[l as usize] + arr2[r as usize] < x {
            l += 1;
        } else {
            r -= 1;
        }
    }
    count
}
