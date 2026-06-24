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


use std::f32::INFINITY;

#[no_mangle]
fn f_gold(arr: [f32;2], n: u32) -> i32 {
    let mut min_ending_here = INFINITY;
    let mut min_so_far = INFINITY;
    for i in 0..n {
        if min_ending_here > 0.0 { 
            min_ending_here = arr[i];
        } else {
            min_ending_here += arr[i];
        }
        min_so_far = min_so_far.min(min_ending_here);
    }
    min_so_far
}
