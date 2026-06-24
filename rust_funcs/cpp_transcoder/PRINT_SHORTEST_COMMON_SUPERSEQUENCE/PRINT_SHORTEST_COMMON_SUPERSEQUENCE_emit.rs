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

use std::cmp::min;

#[no_mangle]
fn f_gold(X: String, Y: String) -> String {
    let m = X.len();
    let n = Y.len();
    let mut dp = vec![vec![0; n + 1]; m + 1];

    for i in 0..=m {
        for j in 0..=n {
            if i == 0 {
                dp[i][j] = j as f32;
            } else if j == 0 {
                dp[i][j] = i as f32;
            } else if X.chars().nth(i - 1) == Y.chars().nth(j - 1) {
                dp[i][j] = 1.0 + dp[i - 1][j - 1];
            } else {
                dp[i][j] = 1.0 + min(dp[i - 1][j], dp[i][j - 1]);
            }
        }
    }
    let mut index = dp[m][n] as usize;
    let mut str = String::new();
    let mut i = m;
    let mut j = n;
    while i > 0 && j > 0 {
        if X.chars().nth(i - 1) == Y.chars().nth(j - 1) {
            str.push(X.chars().nth(i - 1).unwrap());
            i -= 1;
            j -= 1;
            index -= 1;
        } else if dp[i - 1][j] > dp[i][j - 1] {
            str.push(Y.chars().nth(j - 1).unwrap());
            j -= 1;
            index -= 1;
        } else {
            str.push(X.chars().nth(i - 1).unwrap());
            i -= 1;
            index -= 1;
        }
    }
    while i > 0 {
        str.push(X.chars().nth(i - 1).unwrap());
        i -= 1;
        index -= 1;
    }
    while j > 0 {
        str.push(Y.chars().nth(j - 1).unwrap());
        j -= 1;
        index -= 1;
    }
    str.reverse();
    str
}
