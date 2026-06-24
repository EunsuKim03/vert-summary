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
    let mut one_count = 0;
    let mut zero_count = 0;
    let n = str.len();
    for i in 0..n {
        if str.chars().nth(i).unwrap() == '1' {
            one_count += 1;
        } else {
            zero_count += 1; 
        }
    }
    if one_count % 2 == 0 {
        return zero_count; 
    }
    return one_count;
}
