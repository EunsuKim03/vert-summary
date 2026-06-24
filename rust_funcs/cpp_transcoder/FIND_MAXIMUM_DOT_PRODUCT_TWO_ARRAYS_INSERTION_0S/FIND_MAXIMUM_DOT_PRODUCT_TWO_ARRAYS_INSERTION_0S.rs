fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(A: [f32;2], B: [f32;2], m: i32, n: i32) -> i32 {
    let mut dp = vec![vec![0.0; m as usize + 1]; n as usize + 1];
    for i in 1..=n {
        for j in i..=m  {
            dp[i as usize][j as usize] = dp[i as usize - 1][j as usize - 1] + A[j as usize - 1] * B[i as usize - 1];        
            dp[i as usize][j as usize] = dp[i as usize][j as usize - 1].max(dp[i as usize][j as usize]);
        }
    }
    dp[n as usize][m as usize]
}
