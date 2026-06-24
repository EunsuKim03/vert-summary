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
fn f_gold(n: i32, a: i32, b: i32, c: i32) -> i32 {
    let mut dp = vec![-1; n as usize + 1];
    dp[0] = 0;
    for i in 0..n {
        if dp[i as usize] != -1 {
            if i + a <= n {
                dp[(i + a) as usize] = dp[i as usize].max(dp[(i + a) as usize] + 1);
            }       
            if i + b <= n {
                dp[(i + b) as usize] = dp[i as usize].max(dp[(i + b) as usize] + 1);
            }
            if i + c <= n {
                dp[(i + c) as usize] = dp[i as usize].max(dp[(i + c) as usize] + 1);
            }
        }
    }
    dp[n as usize] 
}
