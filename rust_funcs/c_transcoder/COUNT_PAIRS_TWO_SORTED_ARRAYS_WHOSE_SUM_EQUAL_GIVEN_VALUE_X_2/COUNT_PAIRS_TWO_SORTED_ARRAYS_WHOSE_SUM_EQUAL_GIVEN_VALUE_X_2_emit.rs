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
fn f_gold (arr1: Vec<f32>, arr2: Vec<f32>, m: f32, n: f32, x: f32) -> i32 {
    let mut count = 0f32;
    let mut l = 0f32; 
    let mut r = n - 1f32;
    while l < m && r >= 0f32 {
        if (arr1[l as usize] + arr2[r as usize]) == x {
            l += 1f32;
            r -= 1f32;
            count += 1f32;
        } else if (arr1[l as usize] + arr2[r as usize]) < x {
            l += 1f32;
        } else {
            r -= 1f32;
        }
    }
    count
}
