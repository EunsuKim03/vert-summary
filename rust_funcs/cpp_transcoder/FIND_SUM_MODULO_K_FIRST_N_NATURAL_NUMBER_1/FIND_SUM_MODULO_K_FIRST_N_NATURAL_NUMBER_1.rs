fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(N: i32,  K: i32) -> i32 {
   let mut ans = 0;
   let y = N / K;
   let x = N % K;
   ans = (K * (K - 1) / 2) * y + (x * (x + 1) / 2);
   ans
}
