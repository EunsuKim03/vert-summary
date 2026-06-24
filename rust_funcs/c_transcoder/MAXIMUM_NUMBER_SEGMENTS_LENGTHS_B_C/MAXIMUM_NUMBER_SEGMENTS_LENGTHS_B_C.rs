fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32, a: i32, b: i32, c: i32) -> i32 {
    let mut dp = vec![-1; n as usize + 1];
    dp[0] = 0;
    for i in 0..n {
        if dp[i as usize] != -1 {
            dp[(i + a) as usize] = dp[i as usize].max(dp[(i + a) as usize] + 1);
            dp[(i + b) as usize] = dp[i as usize].max(dp[(i + b) as usize] + 1);
            dp[(i + c) as usize] = dp[i as usize].max(dp[(i + c) as usize] + 1);
        }
    }
    dp[n as usize]
}
