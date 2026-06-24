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

use std::mem;

#[no_mangle]
fn f_gold(mut str: &mut [char], n: i32) -> i32 {
    let mut dp = vec![vec![0; n as usize]; n as usize];
    let mut p = vec![vec![0; n as usize]; n as usize];

    for i in 0..n as usize {
        p[i][i] = 1;
    }

    for i in 0..n as usize - 1 {
        if str[i] == str[i + 1] {
            p[i][i + 1] = 1;
            dp[i][i + 1] = 1;
        }
    }

    for gap in 2..n as usize {
        for i in 0..n as usize - gap {
            let j = gap + i;
            if str[i] == str[j] && p[i + 1][j - 1] {
                p[i][j] = 1;
            }
            if p[i][j] {
                dp[i][j] = dp[i][j - 1] + dp[i + 1][j] + 1 - dp[i + 1][j - 1];
            } else {
                dp[i][j] = dp[i][j - 1] + dp[i + 1][j] - dp[i + 1][j - 1];
            }
        }
    }
    dp[0][n as usize - 1] 
}
