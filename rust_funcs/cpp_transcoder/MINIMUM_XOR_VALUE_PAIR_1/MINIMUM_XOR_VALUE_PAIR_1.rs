fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: &mut [f32], n: i32) -> i32 {
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let mut min_xor = i32::MAX; 
    let mut val = 0;
    for i in 0..n-1 {
        val = (arr[i] as i32) ^ (arr[i + 1] as i32);
        min_xor = min(min_xor, val);
    }
    min_xor
}
