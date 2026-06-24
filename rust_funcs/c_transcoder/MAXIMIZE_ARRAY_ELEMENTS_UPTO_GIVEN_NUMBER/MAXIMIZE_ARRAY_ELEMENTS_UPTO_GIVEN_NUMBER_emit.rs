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
fn f_gold(arr: [i32;2], n: i32, num: i32, max_limit: i32) -> i32 {
    let mut ind = 0;
    let mut val = 0;
    let mut dp = vec![vec![0; max_limit as usize + 1]; n as usize];
    for ind in 0..n {
        for val in 0..=max_limit {
            if ind == 0 {
                if num - arr[ind as usize] == val || num + arr[ind as usize] == val {
                    dp[ind as usize][val as usize] = 1; 
                } else {
                    dp[ind as usize][val as usize] = 0;
                }
            } else {
                if val - arr[ind as usize] >= 0 && val + arr[ind as usize] <= max_limit {
                    dp[ind as usize][val as usize] = dp[(ind - 1) as usize][(val - arr[ind as usize]) as usize] | dp[(ind - 1) as usize][(val + arr[ind as usize]) as usize];
                } else if val - arr[ind as usize] >= 0 {
                    dp[ind as usize][val as usize] = dp[(ind - 1) as usize][(val - arr[ind as usize]) as usize];
                } else if val + arr[ind as usize] <= max_limit {
                    dp[ind as usize][val as usize] = dp[(ind - 1) as usize][(val + arr[ind as usize]) as usize];
                } else {
                    dp[ind as usize][val as usize] = 0;
                }
            } 
        }
    }
    for val in (0..max_limit).rev() {
        if dp[(n - 1) as usize][val as usize] == 1 {
            return val;
        }
    }
    -1
}
