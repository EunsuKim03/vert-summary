fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;
fn f_gold(n: i32) -> i32 {
  let mut dp = vec![vec![0; 10]; n as usize + 1];
 
  if n == 1 {
    return 10;
  }

  for j in 0..=9 {
    dp[1][j] = 1; 
  }
  
  for i in 2..=n {  
    for j in 0..=9 {
      if j == 0 {
        dp[i as usize][j] = dp[(i-1) as usize][j+1];  
      } else if j == 9 {
        dp[i as usize][j] = dp[(i-1) as usize][j-1];
      } else {
        dp[i as usize][j] = dp[(i-1) as usize][j-1] + dp[(i-1) as usize][j+1];
      }
    }    
   }  
  
  let mut sum = 0;
  for j in 1..=9 {
     sum += dp[n as usize][j as usize];
  }
 
   return sum;  
}
