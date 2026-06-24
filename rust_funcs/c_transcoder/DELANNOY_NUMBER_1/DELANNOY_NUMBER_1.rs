fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


 fn f_gold(n: i32, m: i32) -> i32 {
   let mut dp = vec![vec![1; n as usize + 1]; m as usize + 1]; 
   for i in 1..=m {
      for j in 1..=n {
         dp[i as usize][j as usize] = dp[(i - 1) as usize][j as usize] + dp[(i - 1) as usize][(j - 1) as usize] + dp[i as usize][(j - 1) as usize];
      }
   }
   dp[m as usize][n as usize]
}
