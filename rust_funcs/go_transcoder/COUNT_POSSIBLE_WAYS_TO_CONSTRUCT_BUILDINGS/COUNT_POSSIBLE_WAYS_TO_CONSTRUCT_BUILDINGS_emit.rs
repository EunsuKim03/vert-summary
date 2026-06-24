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
fn f_gold(n: i32) -> i32 {
    if n == 1 { 
        return 4;
    }
    let mut count_b = 1; 
    let mut count_s = 1;
    let mut prev_count_b;
    let mut prev_count_s;
    for i in 2..=n {
        prev_count_b = count_b;
        prev_count_s = count_s;
        count_s = prev_count_b + prev_count_s;
        count_b = prev_count_s;
    }
    let result = count_s + count_b;
    return result * result; 
}
