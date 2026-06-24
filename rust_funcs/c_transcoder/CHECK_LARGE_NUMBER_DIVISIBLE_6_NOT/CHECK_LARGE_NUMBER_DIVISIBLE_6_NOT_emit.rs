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

use std::str;

#[no_mangle]
fn f_gold(str: &str) -> i32 {
    let n = str.len();
    if (str.chars().last().unwrap() as u32 - '0' as u32) % 2 != 0 {
        return 0;
    }
    let mut digit_sum = 0f32;
    for c in str.chars() {
        digit_sum += (c as u32 - '0' as u32) as f32;
    }
    digit_sum % 3.0 == 0.0
}
