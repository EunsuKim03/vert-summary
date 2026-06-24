fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::mem;

fn f_gold(n: i32) -> i32 {
    let mut dp = [[0; n as usize + 1]; 10];
    for i in 0..10 {
        dp[i][1] = 1;
    }
    for digit in 0..10 {
        for len in 2..=n {
            for x in 0..=digit {
                dp[digit][len] += dp[x][len-1];
            }
        }
    }
    let mut count = 0;
    for i in 0..10 {
        count += dp[i][n as usize];
    }
    count
}
