fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

fn f_gold() -> i32 {
let n = str.len();
let mut res = -1 as f32;
for i in 0..n-1 {
    for j in i+1..n {
        if str[i] == str[j] {
            res = res.max( (j - i - 1) as f32).abs();
        }
    } 
}
res
}
