fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: i32) -> i32 {
    let mut a = vec![1; n as usize];
    let mut b = vec![1; n as usize];

    for i in 1..n as usize {
        a[i] = a[i - 1] + b[i - 1];
        b[i] = a[i - 1];
    }

    a[n as usize - 1] + b[n as usize - 1]
}
