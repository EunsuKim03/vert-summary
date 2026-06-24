fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [i32;2], n: i32, k: i32) -> i32 {  
       let mut dp = vec![vec![0; n as usize]; k as usize];       for i in 0..n {           dp[0][i as usize] = 1;       }       for l in 1..k {           for i in l..n {               dp[l as usize][i as usize] = 0;               for j in l-1..i {                   if arr[j as usize] < arr[i as usize] {                       dp[l as usize][i as usize] += dp[(l-1) as usize][j as usize];                   }               }           }       }       let mut sum = 0;       for i in (k-1)..n {           sum += dp[(k-1) as usize][i as usize];       }       sum}
