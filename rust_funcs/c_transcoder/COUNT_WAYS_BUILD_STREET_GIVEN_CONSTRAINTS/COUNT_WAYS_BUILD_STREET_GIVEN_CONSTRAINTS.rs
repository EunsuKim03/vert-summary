fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut dp = vec![vec![0; n as usize + 1]; 2];
    dp[0][1] = 1;
    dp[1][1] = 2;
    for i in 2..=n {
        dp[0][i as usize] = dp[0][(i-1) as usize] + dp[1][(i-1) as usize];
        dp[1][i as usize] = dp[0][(i-1) as usize] * 2 + dp[1][(i-1) as usize];
    }
    dp[0][n as usize] + dp[1][n as usize]
}
