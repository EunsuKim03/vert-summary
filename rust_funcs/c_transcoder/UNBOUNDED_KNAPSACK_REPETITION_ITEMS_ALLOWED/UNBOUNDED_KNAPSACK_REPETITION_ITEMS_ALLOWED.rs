fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::mem;

fn f_gold(W: i32, n: i32, val: [i32;2], wt: [i32;2]) -> i32 {
    let mut dp = vec![0; W as usize + 1];
    let mut ans = 0;
    for i in 0..=W  {
        for j in 0..n {
            if wt[j as usize] <= i  {
                dp[i as usize] = dp[i as usize].max(dp[(i - wt[j as usize]) as usize] + val[j as usize]); 
            }
        }
    }
    dp[W as usize]
}
