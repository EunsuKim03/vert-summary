fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32, m: i32) -> i32 {
    let mut dp = vec![0; m as usize];
    if n > m {
        return 1; 
    }
    for i in 0..n {
        let mut temp = vec![0; m as usize];
        for j in 0..m {
            if dp[j as usize] {
                if dp[((j + arr[i as usize]) % m) as usize] == 0 {
                    temp[((j + arr[i as usize]) % m) as usize] = 1;
                }
            } 
        }
        for j in 0..m {
            if temp[j as usize] {
                dp[j as usize] = 1;
            }
        }
        dp[arr[i as usize] as usize % m as usize] = 1;
    }
    dp[0] 
}
