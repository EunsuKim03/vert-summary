fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(s1: &str, s2: &str) -> i32 {
    let n = s1.len();
    let m = s2.len();
    let mut dp = vec![vec![0; m + 1]; n + 1];
    dp[0][0] = 1;
    for i in 0..n {
        for j in 0..=m {
            if dp[i][j] {
                if j < m && s1[i].to_uppercase() == s2[j] {
                    dp[i + 1][j + 1] = 1;
                }
                if !s1[i].is_uppercase() {
                    dp[i + 1][j] = 1;
                }
            }
        }
    }
    dp[n][m]
}
