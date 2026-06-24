fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(a: String, b: String) -> i32 {
    let n = a.len();
    let m = b.len();
    if m == 0 {
        return 1;
    }
    let mut dp = vec![vec![0; n + 1]; m + 1];
    for i in 0..m {
        for j in i..n {
            if i == 0 {
                if j == 0 {
                    dp[i][j] = if a.chars().nth(j) == b.chars().nth(i) {1} else {0};
                } else if a.chars().nth(j) == b.chars().nth(i) {
                    dp[i][j] = dp[i][j - 1] + 1;
                } else {
                    dp[i][j] = dp[i][j - 1];
                }
            } else {
                if a.chars().nth(j) == b.chars().nth(i) {
                    dp[i][j] = dp[i][j - 1] + dp[i - 1][j - 1];
                } else {
                    dp[i][j] = dp[i][j - 1];
                }
            } 
        }
    }
    return dp[m - 1][n - 1]; 
}
