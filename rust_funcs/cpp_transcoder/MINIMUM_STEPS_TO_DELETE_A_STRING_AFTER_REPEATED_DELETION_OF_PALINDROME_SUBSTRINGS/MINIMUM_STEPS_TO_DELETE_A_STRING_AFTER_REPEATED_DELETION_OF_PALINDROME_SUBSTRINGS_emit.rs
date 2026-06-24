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
fn f_gold(mut str: String) -> i32 {
    let mut N = str.len();
    let mut dp = vec![vec![0; N + 1]; N + 1];
    for i in 0..=N {
        for j in 0..=N {
            dp[i][j] = 0;
        }
    }
    for len in 1..=N {
        for i in 0..N-len+1 {
            let mut j = i + len - 1;
            if len == 1 {
                dp[i][j] = 1;
            } else {
                dp[i][j] = 1 + dp[i+1][j];
                if str[i..i+1] == str[i+1..i+2] {
                    dp[i][j] = dp[i][j].min(1 + dp[i+2][j]);
                }
                for K in i+2..=j {
                    if str[i..i+1] == str[K..K+1] {
                        dp[i][j] = dp[i][j].min(dp[i+1][K-1] + dp[K+1][j]);
                    }
                }
            }
        }
    }
    return dp[0][N-1]; 
}
