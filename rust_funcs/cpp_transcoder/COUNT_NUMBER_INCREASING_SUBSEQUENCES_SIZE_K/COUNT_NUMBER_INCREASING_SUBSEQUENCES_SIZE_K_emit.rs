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
fn f_gold(arr: [f32;2], n: u32, k: u32) -> i32 {
    let mut dp = vec![vec![0.0; n]; k];
    let mut sum = 0.0;
    for i in 0..n {
        dp[0][i] = 1.0;
    }
    for l in 1..k {
        for i in l..n {
            dp[l][i] = 0.0;
            for j in (l - 1)..i {
                if arr[j] < arr[i] {
                    dp[l][i] += dp[l - 1][j];
                }
            }
        }
    }
    for i in (k - 1)..n {
        sum += dp[k - 1][i];
    }
    sum
}
