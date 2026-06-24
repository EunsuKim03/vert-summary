fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;

fn f_gold(N: i32) -> i32 {
    let mut dp = vec![1, 2];
    let mut i = 2;
    while dp[i-1] + dp[i-2] <= N {
        dp.push(dp[i-1] + dp[i-2]);
        i += 1;
    }
    i - 2
}
