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


#[no_mangle]
fn f_gold(str: &str) -> i32 {
    let n = str.len();
    let mut dp = vec![vec![0; n + 1]; n + 1];
    for len in 1..=n {
        for i in 0..(n - len + 1) {
            let j = i + len - 1;
            if len == 1 {
                dp[i][j] = 1;
            } else {
                dp[i][j] = 1 + dp[i + 1][j]; 
                if str.chars().nth(i) == str.chars().nth(i + 1) {
                    dp[i][j] = min(1 + dp[i + 2][j], dp[i][j]);
                }
                for k in (i + 2)..=j {
                    if str.chars().nth(i) == str.chars().nth(k) {
                        dp[i][j] = min(dp[i + 1][k - 1] + dp[k + 1][j], dp[i][j]); 
                    }
                }
            }
        }
    }
    dp[0][n - 1]
}
