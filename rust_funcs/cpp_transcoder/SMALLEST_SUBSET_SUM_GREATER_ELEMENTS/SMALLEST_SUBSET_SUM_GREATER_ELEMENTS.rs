fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


fn f_gold(mut arr: [i32;2], n: i32) -> i32 {
let half_sum:f32 = arr.iter().sum::<i32>() as f32 / 2.0;  
arr.sort_by(|a,b| b.cmp(a));
let mut res = 0;
let mut curr_sum:f32 = 0.0;
for num in arr.iter() {
    curr_sum += *num as f32;
    res += 1;
if curr_sum > half_sum  { return res; }   
}
res
}
