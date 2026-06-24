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

use std::char;
use std::cmp;

#[no_mangle]
fn f_gold(str_: &Vec<char>) -> i32 {
    let n = str_.len();
    let mut dp = vec![vec![0; n+1]; n+1];
    for i in 1..=n {
        for j in 1..=n {
            if str_[i-1] == str_[j-1] && i != j {
                dp[i][j] = 1 + dp[i-1][j-1]; 
            } else {
                dp[i][j] = cmp::max(dp[i][j-1], dp[i-1][j]);
            }
        }
    }
    dp[n][n]
}
