fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;
use std::vec::Vec;

fn f_gold(mut arr: [i32;2], n: i32, k: i32) -> i32 {
    arr.sort();
    let mut result = i32::MAX;
    for i in 0..n-k+1 {
        result = cmp::min(result, arr[i as usize + k as usize - 1] - arr[i as usize]);
    }
    result
}
