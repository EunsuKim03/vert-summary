fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32, m: i32) -> i32 {
    let mut dp = vec![vec![0; n as usize + 2]; n as usize + 2];
    dp[0][n as usize + 1] = 1;
    for k in (n..=m).rev() {
        for i in 0..=n {
            dp[i as usize][k as usize] = dp[i as usize][(k + 1) as usize];
            if i - k >= 0 {
                dp[i as usize][k as usize] += dp[(i - k) as usize][k as usize];
            }
        }
    }
    dp[n as usize][m as usize]
}
