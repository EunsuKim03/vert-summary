fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(arr: [f32;2], n: u32) -> i32 {
let mut min_prefix_sum = 0.;
let mut res = f32::MIN;
let mut prefix_sum = vec![0.; n];
prefix_sum[0] = arr[0];
for i in 1..n {
 prefix_sum[i] = prefix_sum[i - 1] + arr[i]; 
}
for i in 0..n {
 res = res.max(prefix_sum[i] - min_prefix_sum);
 min_prefix_sum = min_prefix_sum.min(prefix_sum[i]);
}
res
}
