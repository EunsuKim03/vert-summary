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
fn f_gold(n:i32) -> i32 {  
    let mut DP = vec![0; n as usize + 1];
    DP[0] = 1;
    DP[1] = 1;
    DP[2] = 1;
    DP[3] = 2;
    for i in 4..=n {
        DP[i as usize] = DP[(i-1) as usize] + DP[(i-3) as usize] + DP[(i-4) as usize];
    }
    DP[n as usize] 
}
