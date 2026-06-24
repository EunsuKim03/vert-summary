fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: i32) -> i32 {
   let mut dp = vec![0; n as usize + 1];
   dp[0] = 0;
   for i in 1..=n {
       if i >= 1 && i <= 3 {
           dp[i as usize] = 1;
       } else if i == 4 {
           dp[i as usize] = 2;
       } else {
           dp[i as usize] = dp[(i - 1) as usize] + dp[(i - 4) as usize];
       }  
   }
   dp[n as usize]
}
