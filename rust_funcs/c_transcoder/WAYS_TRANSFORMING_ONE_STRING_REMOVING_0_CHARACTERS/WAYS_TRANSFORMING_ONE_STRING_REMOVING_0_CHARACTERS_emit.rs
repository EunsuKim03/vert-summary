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
fn f_gold(a: Vec<char>, b: Vec<char>) -> i32 {
    let n = a.len();
    let m = b.len();
    if m == 0 { return 1; }
    let mut dp = vec![vec![0; n + 1]; m + 1];
    for i in 0..m {
        for j in i..n {
            if i == 0 {
                if j == 0 { dp[i][j] = if a[j] == b[i] { 1 } else { 0 }; }
                else if a[j] == b[i] { dp[i][j] = dp[i][j - 1] + 1; }
                else { dp[i][j] = dp[i][j - 1]; }
            } else {
                if a[j] == b[i] { dp[i][j] = dp[i][j - 1] + dp[i - 1][j - 1]; }
                else { dp[i][j] = dp[i][j - 1]; }
            }
        }
    }
    dp[m - 1][n - 1]
}
