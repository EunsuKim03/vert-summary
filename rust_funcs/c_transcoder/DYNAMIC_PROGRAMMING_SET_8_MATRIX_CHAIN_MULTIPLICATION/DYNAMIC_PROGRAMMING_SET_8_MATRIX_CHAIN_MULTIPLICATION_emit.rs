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

use std::cmp::Ordering;

#[no_mangle]
fn f_gold(p: &[f32;2], i: u32, j: u32) -> i32  { 
    if i == j { return 0.0; } 
    let mut min = std::f32::MAX; 

    for k in i..j  {
        let count =   f_gold(p, i, k) + f_gold(p, k + 1, j) + p[i - 1] * p[k] * p[j];
        match count.partial_cmp(&min) {
            Some(Ordering::Less) => min = count,
            _ => {}
        }
    }
    min
}
