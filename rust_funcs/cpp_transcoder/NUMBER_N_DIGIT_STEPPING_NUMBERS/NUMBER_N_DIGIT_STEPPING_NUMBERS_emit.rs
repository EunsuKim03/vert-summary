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
fn f_gold(n: i32) -> i32 {
    let mut dp = vec![vec![0; 10]; n as usize + 1];
    if n == 1 {
        return 10;
    }
    for j in 0..=9 {
        dp[1][j] = 1;
    }
    for i in 2..=n {
        for j in 0..=9 {
            if j == 0 {
                dp[i as usize][j] = dp[(i - 1) as usize][j + 1];
            } else if j == 9 {
                dp[i as usize][j] = dp[(i - 1) as usize][j - 1];     
            } else {
                dp[i as usize][j] = dp[(i - 1) as usize][j - 1] + dp[(i - 1) as usize][j + 1];
            }
        }
    }
    let mut sum = 0;
    for j in 1..=9 {
        sum += dp[n as usize][j];
    }
    sum
}
