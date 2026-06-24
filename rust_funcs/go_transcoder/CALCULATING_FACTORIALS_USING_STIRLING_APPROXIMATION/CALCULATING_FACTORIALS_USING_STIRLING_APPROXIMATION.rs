fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: i32) -> i32 {
    if n == 1 {
        return 1
    }
    let mut z =0.0;
    let e = 2.71;
    z = (2.0 * 3.14 * n as f32).sqrt() * (n as f32 / e).powf(n as f32);
    return z as i32
}
