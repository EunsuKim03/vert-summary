fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: i32) -> i32 {
let mut dp = vec![1; n as usize];
for i in 1..n as usize {
    for j in 0..i {
        if arr[i] == arr[j] + 1.0 || arr[i] == arr[j] - 1.0 {
            dp[i] = dp[i].max(dp[j] + 1); 
        }
    } 
}
let mut result = 1;
for i in 0..n as usize {
    if result < dp[i] {
        result = dp[i];
    } 
}
result
}
