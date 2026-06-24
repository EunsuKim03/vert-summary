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
fn f_gold(n: i32, insert: i32, remove: i32, copy: i32) -> i32 {
    if n == 0 {
        return 0;
    }
    if n == 1 {
        return insert;
    }
    let mut dp = vec![0; n as usize + 1];
    for i in 1..=n {
        if i % 2 == 0 {
            dp[i as usize] = dp[(i - 1) as usize] + insert;
            dp[i as usize] = std::cmp::min(dp[i as usize], dp[(i / 2) as usize] + copy);
        } else {
            dp[i as usize] = dp[(i - 1) as usize] + insert;
            dp[i as usize] = std::cmp::min(dp[i as usize], dp[((i + 1) / 2) as usize] + copy + remove);
        }
    }
    dp[n as usize]
}
