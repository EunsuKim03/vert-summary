fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold( n: i32) -> i32 {
    let mut dp = vec![0; n as usize + 1];
    for i in 0..=n {
        if i <= 2 {
            dp[i as usize] = i;
        } else {
            dp[i as usize] = dp[(i - 1) as usize] + (i - 1) * dp[(i - 2) as usize];
        }
    }
    dp[n as usize]
}
