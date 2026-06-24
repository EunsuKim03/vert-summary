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
fn f_gold(arr: &[f32;2], n: u32) -> i32 {
    let mut dp = vec![0.0; n];
    if n == 1  {return arr[0];}
    if n == 2  {return arr[0].min(arr[1]);}
    if n == 3  {return arr[0].min(arr[1].min(arr[2]));}
    if n == 4  {return arr[0].min(arr[1]).min(arr[2].min(arr[3]));}
    dp[0] = arr[0];
    dp[1] = arr[1];
    dp[2] = arr[2];
    dp[3] = arr[3];
    for i in 4..n {
        dp[i] = arr[i] + dp[i-1].min(dp[i-2]).min(dp[i-3].min(dp[i-4])); 
    }
    dp[n-1].min(dp[n-2]).min(dp[n-4].min(dp[n-3]))
}
