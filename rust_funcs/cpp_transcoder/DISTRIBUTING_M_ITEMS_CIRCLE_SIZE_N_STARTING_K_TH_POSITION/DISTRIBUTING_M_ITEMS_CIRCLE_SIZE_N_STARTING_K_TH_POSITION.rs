fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: i32, m: i32, k: i32) -> i32 {
    if m <= n - k + 1 {
        return m + k - 1
    } 
    let mut m = m - (n - k + 1);
    if m % n == 0 {
        n 
    } else {
        m % n
    } 
}
