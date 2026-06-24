fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp;

fn f_gold(arr: [i32;2], N: i32, K: i32) -> i32 {
    let mut arr = arr.to_vec();
    arr.sort();
    let mut dp = vec![0; N as usize];
    dp[0] = 0;
    for i in 1..N as usize {
        dp[i] = dp[i - 1];
        if arr[i] - arr[i - 1] < K {
            if i >= 2 {
                dp[i] = cmp::max(dp[i], dp[i - 2] + arr[i] + arr[i - 1]);
            } else {
                dp[i] = cmp::max(dp[i], arr[i] + arr[i - 1]);
            }
        }
    }
    dp[N as usize - 1]
}
