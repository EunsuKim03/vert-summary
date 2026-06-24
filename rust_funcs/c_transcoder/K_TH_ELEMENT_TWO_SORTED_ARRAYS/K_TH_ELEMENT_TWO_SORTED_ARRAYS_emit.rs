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
fn f_gold(arr1: [f32;2], arr2: [f32;2], m: i32, n: i32, k: i32) -> i32 {
    let mut sorted1: Vec<f32> = Vec::with_capacity(m as usize + n as usize);
    let mut i = 0; 
    let mut j = 0;
    let mut d = 0;
    while i < m as usize && j < n as usize {
        if arr1[i] < arr2[j] {
            sorted1[d] = arr1[i];
            i += 1; 
        } else {
            sorted1[d] = arr2[j];
            j += 1;
        }
        d += 1;
    }
    while i < m as usize {
        sorted1[d] = arr1[i];
        i += 1;
        d += 1; 
    }
    while j < n as usize {
        sorted1[d] = arr2[j];
        j += 1;
        d += 1;
    }
    sorted1[k as usize - 1]
}
