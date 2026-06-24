fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::mem;

fn f_gold(str: String, n: i32) -> i32 {
    let len = str.len();
    let mut dp = vec![vec![0; n as usize]; len];
    dp[0][(str.as_bytes()[0] - b'0') as usize % n as usize] += 1;
    for i in 1..len {
        dp[i][(str.as_bytes()[i] - b'0') as usize % n as usize] += 1;
        for j in 0..n {
            dp[i][j as usize] += dp[i - 1][j as usize];
            dp[i][((j * 10) + (str.as_bytes()[i] - b'0') as i32) as usize % n as usize] += dp[i - 1][j as usize];
        }
    }
    dp[len - 1][0] 
}
