fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(str: String) -> i32 {
    let n = str.len();
    let mut dp = vec![vec![0; 10]; n + 1];
    let mut arr = vec![0; n + 1];
    for i in 1..=n {
        arr[i] = str.chars().nth(i - 1).unwrap() as usize - '0' as usize;
    }
    for i in 1..=n {
        dp[i][arr[i] % 8] = 1;
        for j in 0..8 {
            if dp[i - 1][j] > dp[i][(j * 10 + arr[i]) % 8] {
                dp[i][(j * 10 + arr[i]) % 8] = dp[i - 1][j];
            }
            if dp[i - 1][j] > dp[i][j] {
                dp[i][j] = dp[i - 1][j];
            }
        }
    }
    for i in 1..=n {
        if dp[i][0] == 1 {
            return 1;
        }
    }
    0
}
