fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut res: i32 = 0;
    for i in 0..n-1 {
        res = res ^ (i + 1) ^ arr[i as usize];
    }
    res = res ^ arr[(n - 1) as usize];
    res
}
