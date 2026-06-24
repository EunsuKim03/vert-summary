fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;
fn f_gold(n: i32) -> i32 {
    let mut sum: f32 = 1.0; 
    sum += n as f32 * 2.0;
    let n2 = (n * n) as f32;
    let n = n as f32;
    sum += n2 * (n - 1.0) / 2.0;
    sum as i32
}
