fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(N: i32, insert: i32, remove: i32, copy: i32) -> i32 {
   if N == 0 {return 0;}
   if N == 1 {return insert;}
   let mut dp = vec![0; N as usize + 1];
   for i in 1..=N {
       if i % 2 == 0 {dp[i as usize] = dp[(i - 1) as usize] + insert.min(dp[(i / 2) as usize] + copy);}
       else {dp[i as usize] = dp[(i - 1) as usize] + insert.min(dp[((i + 1) / 2) as usize] + copy + remove);}  
   }
   dp[N as usize]
}
