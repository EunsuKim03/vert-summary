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

use std::f32::consts::PI;

#[no_mangle]
fn f_gold (arr: Vec<f32>, n: i32, num: f32, max_limit: f32) -> i32 {
    let mut ind = 0;
    let mut val = 0;
    if dp[n as usize - 1][val as usize] > 0 { 
    for ind in 0..n as usize {
        for val in 0..(max_limit + 1) as usize {
            if ind == 0 {
                if (num - arr[ind]) == val || (num + arr[ind]) == val  {
                    dp[ind][val] = 1;
                } else {
                    dp[ind][val] = 0;
                }
            } else {
                if val - arr[ind] >= 0 && val + arr[ind] <= max_limit {
                    dp[ind][val] = dp[ind - 1][(val - arr[ind]) as usize] || dp[ind - 1][(val + arr[ind]) as usize];
                } else if val - arr[ind] >= 0  {
                    dp[ind][val] = dp[ind - 1][(val - arr[ind]) as usize];
                } else if val + arr[ind] <= max_limit {
                    dp[ind][val] = dp[ind - 1][(val + arr[ind]) as usize];
                } else {
                    dp[ind][val] = 0;
                }
            }
        }
    }
    for val in (max_limit as i32)..=0 {
        if dp[n as usize - 1][val as usize] > 0 {
            return val;
        }
    }
    -1
}
