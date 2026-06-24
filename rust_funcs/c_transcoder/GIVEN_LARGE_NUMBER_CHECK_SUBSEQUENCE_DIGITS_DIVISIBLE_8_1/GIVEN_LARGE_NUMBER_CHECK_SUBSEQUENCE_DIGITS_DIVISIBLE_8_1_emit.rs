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
fn f_gold(str: &Vec<char>) -> i32 {
    let n = str.len();
    let mut dp = vec![vec![0; 10]; n + 1];
    let mut arr = vec![0; n + 1];
    for i in 1..=n  {
        arr[i] = (str[i - 1] as u8 - b'0') as usize;
    }
    for i in 1..=n {
        dp[i][arr[i] % 8] = 1;
        for j in 0..8 {
            if dp[i - 1][j] > dp[i][(j * 10 + arr[i]) % 8] {
                dp[i][(j * 10 + arr[i]) % 8] = dp[i - 1][j];
            }
            if dp[i - 1][j] > dp[i][j] {
                dp[i][j] = dp[i - 1][j];
            }
        }
    }
    for i in 1..=n {
        if dp[i][0] == 1 {
            return 1;
        }
    }
    0
}
