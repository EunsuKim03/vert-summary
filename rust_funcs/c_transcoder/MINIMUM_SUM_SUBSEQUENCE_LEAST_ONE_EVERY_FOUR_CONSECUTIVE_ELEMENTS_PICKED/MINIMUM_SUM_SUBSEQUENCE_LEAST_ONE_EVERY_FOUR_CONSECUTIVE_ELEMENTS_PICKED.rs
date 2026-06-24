fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32) -> i32 {
  let mut dp = vec![0; n as usize];
  if n == 1 {return arr[0];}
  if n == 2 {return arr[0].min(arr[1]);}
  if n == 3 {return arr[0].min(arr[1].min(arr[2]));}
  if n == 4 {return arr[0].min(arr[1]).min(arr[2].min(arr[3]));}
  dp[0] = arr[0];
  dp[1] = arr[1];
  dp[2] = arr[2];
  dp[3] = arr[3];
  for i in 4..n as usize {
    dp[i] = arr[i] + dp[i - 1].min(dp[i - 2]).min(dp[i - 3].min(dp[i - 4]));
  }
  dp[n as usize - 1].min(dp[n as usize - 2]).min(dp[n as usize - 4].min(dp[n as usize - 3])) 
}
