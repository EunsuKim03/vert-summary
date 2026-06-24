fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(x: i32) -> i32 {
    let mut dp = vec![1; x as usize + 1];
    for i in 2..=x {
        dp[i as usize] = dp[(i - 1) as usize] + (i - 1) * dp[(i - 2) as usize];
    }
    dp[x as usize]
}
