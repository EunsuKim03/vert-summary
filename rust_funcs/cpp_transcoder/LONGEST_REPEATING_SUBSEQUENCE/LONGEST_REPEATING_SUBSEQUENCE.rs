fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::{str, vec};
fn f_gold(str: String) -> i32 {
    let n = str.len();
    let mut dp = vec![vec![0; n + 1]; n + 1];
    for i in 1..=n {
        for j in 1..=n {
            if str[i - 1] == str[j - 1] && i != j {
                dp[i][j] = 1 + dp[i - 1][j - 1];
            } else {
                dp[i][j] = f32::max(dp[i][j - 1], dp[i - 1][j] as f32) as i32;
            }
        }
    }
    dp[n][n]
}
