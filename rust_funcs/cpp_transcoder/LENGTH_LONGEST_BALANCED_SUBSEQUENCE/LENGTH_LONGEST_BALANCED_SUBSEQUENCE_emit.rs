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
fn f_gold(s: &str, n: i32) -> i32 {
    let mut dp = vec![vec![0; n as usize]; n as usize];
    for i in 0..n-1 {
        if s.chars().nth(i as usize) == Some('(') && s.chars().nth(i as usize + 1) == Some(')') {
            dp[i as usize][(i + 1) as usize] = 2; 
        }
    }
    for l in 2..n {
        for i in 0..n-l {
            let j = i + l;
            if s.chars().nth(i as usize) == Some('(') && s.chars().nth(j as usize) == Some(')') {
                dp[i as usize][j as usize] = 2 + dp[(i + 1) as usize][(j - 1) as usize];
            }
            for k in i..j {
                dp[i as usize][j as usize] = dp[i as usize][j as usize].max(dp[i as usize][k as usize] + dp[(k + 1) as usize][j as usize]);
            } 
        }
    }
    dp[0][(n - 1) as usize]
}
