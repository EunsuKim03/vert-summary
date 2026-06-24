fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: &mut [i32], N: i32, K: i32) -> i32 {
    let mut dp = vec![0; N as usize];
    dp[0] = 0;
    for i in 1..N {
        dp[i as usize] = dp[(i - 1) as usize];
        if arr[i as usize] - arr[(i - 1) as usize] < K {
            if i >= 2 {
                dp[i as usize] = max(dp[i as usize], dp[(i - 2) as usize] + arr[i as usize] + arr[(i - 1) as usize]);
            } else {
                dp[i as usize] = max(dp[i as usize], arr[i as usize] + arr[(i - 1) as usize]);
            }
        } 
    }
    dp[(N - 1) as usize]
}
