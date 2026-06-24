fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32) -> i32 {
    let mut dp = Vec::with_capacity(n as usize + 1);
    dp.push(1);
    dp.push(1);
    dp.push(1);
    dp.push(2);
    for i in 4..=n {
        dp.push(dp[i as usize - 1] + dp[i as usize - 3] + dp[i as usize - 4]);
    }
    dp[n as usize]
}
