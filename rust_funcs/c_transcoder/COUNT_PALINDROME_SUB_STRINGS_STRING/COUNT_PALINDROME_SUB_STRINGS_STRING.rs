fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::mem;

fn f_gold(str: &[char], n: i32) -> i32 {
    let n = n as usize;
    let mut dp = vec![vec![0; n]; n];
    let mut P = vec![vec![0; n]; n];
    
    for i in 0..n {
        P[i][i] = 1;
    }
    
    for i in 0..n-1 {
        if str[i] == str[i+1] {
            P[i][i+1] = 1;
            dp[i][i+1] = 1;
        }
    }
    
    for gap in 2..n {
        for i in 0..n-gap {
            let j = i + gap;
            if str[i] == str[j] && P[i+1][j-1] {
                P[i][j] = 1;
            }
            if P[i][j] {
                dp[i][j] = dp[i][j-1] + dp[i+1][j] + 1 - dp[i+1][j-1]; 
            } else {
                dp[i][j] = dp[i][j-1] + dp[i+1][j] - dp[i+1][j-1];
            }
        }
    }
 dp[0][n-1] 
}
