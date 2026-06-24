fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32::consts::E;

fn f_gold(n: i32) -> i32 {
  let mut dp = vec![0, 1]; 
  for i in 2..=n {
    if i % 2 == 0 {
      dp.push(dp[(i as f32 / 2.0) as usize]);
    } else {
      dp.push(dp[(i as f32 / 2.0 - 1.0) as usize] + dp[(i as f32 / 2.0 + 1.0) as usize]);
    }
  }
  return dp[n as usize];
}
