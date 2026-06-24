fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(val: [i32;2], wt: [i32;2], n: i32, W: i32) -> i32 {
    let mut dp = vec![0; W as usize + 1];
    for i in 0..n as usize {
        for j in (W as i32)..wt[i] {
            dp[j as usize] = max(dp[j as usize], val[i] + dp[(j - wt[i]) as usize]);
        }
    }
    dp[W as usize]
}
