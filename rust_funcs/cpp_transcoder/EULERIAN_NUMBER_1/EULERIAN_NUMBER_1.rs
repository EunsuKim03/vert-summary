fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(n: i32, m: i32) -> i32 {
    let mut dp = vec![vec![0; m as usize + 1]; n as usize + 1];
    
    for i in 1..=n {
        for j in 0..=m {
            if i > j {
                if j == 0 {
                    dp[i as usize][j as usize] = 1;
                } else {
                    dp[i as usize][j as usize] = (i - j) * dp[i as usize - 1][j as usize - 1] + (j + 1) * dp[i as usize - 1][j as usize];
                }
            }
        }
    }
   dp[n as usize][m as usize] 
}
