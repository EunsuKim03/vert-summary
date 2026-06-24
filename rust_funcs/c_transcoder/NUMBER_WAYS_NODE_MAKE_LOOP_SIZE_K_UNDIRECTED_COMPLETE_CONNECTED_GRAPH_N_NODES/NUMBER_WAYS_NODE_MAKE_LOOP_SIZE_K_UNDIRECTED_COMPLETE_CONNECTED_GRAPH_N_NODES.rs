fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;


fn f_gold(n: i32, k: i32) -> i32 {
    let mut p = 1i32;
    if k % 2 != 0 {p = -1}
    let n = n as f32;
    let k = k as f32;
    let calc = (n - 1.0).powf(k) + p as f32 * (n - 1.0) as f32;
    let res = (calc / n) as i32;
    res
}
