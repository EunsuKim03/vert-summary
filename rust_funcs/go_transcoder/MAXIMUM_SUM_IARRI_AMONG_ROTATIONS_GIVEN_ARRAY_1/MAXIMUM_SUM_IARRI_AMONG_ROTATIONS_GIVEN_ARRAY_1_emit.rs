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
fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut cum_sum = 0.0;
    for i in 0..n as usize {
        cum_sum += arr[i] as f32;
    }
    let mut curr_val = 0.0;
    for i in 0..n as usize {
        curr_val += (i as f32) * (arr[i] as f32);
    }
    let mut res = curr_val as i32;
    for i in 1..n as usize {
        let next_val = curr_val - (cum_sum - arr[i - 1] as f32) + (arr[i - 1] as f32) * ((n - 1) as f32);
        curr_val = next_val;
        res = res.max(next_val as i32);
    }
    res 
}
