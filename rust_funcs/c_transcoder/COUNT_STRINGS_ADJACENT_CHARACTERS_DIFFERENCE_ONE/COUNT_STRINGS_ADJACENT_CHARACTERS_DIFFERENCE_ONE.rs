fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::mem;

fn f_gold(n: i32) -> i32 {
let mut dp = vec![vec![0;27];n as usize+1]; 
for i in 0..=25 { 
dp[1][i] = 1;
}
for i in 2..=n {
for j in 0..=25 {
if j == 0 {dp[i as usize][j] = dp[(i-1) as usize][j+1];}
else {dp[i as usize][j] = dp[(i-1) as usize][j-1] + dp[(i-1) as usize][j+1];}
} 
}
let mut sum = 0;
for i in 0..=25 {
sum += dp[n as usize][i];
}
sum
}
