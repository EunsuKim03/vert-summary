fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [f32;2], n: i32) -> i32 {
let mut res = f32::NEG_INFINITY;
for i in 0..n {
    let mut prefix_sum = arr[i as usize];
    for j in 0..i {
        prefix_sum += arr[j as usize];
    }
    let mut suffix_sum = arr[i as usize];
    for j in (n-1)..i {
        suffix_sum += arr[j as usize];
    }
    if prefix_sum == suffix_sum {
        res = res.max(prefix_sum);
    } 
}
res as i32
}
