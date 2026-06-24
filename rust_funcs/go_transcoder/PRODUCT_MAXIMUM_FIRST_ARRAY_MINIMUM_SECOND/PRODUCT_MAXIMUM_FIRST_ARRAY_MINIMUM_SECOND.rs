fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;

fn f_gold(arr1: &mut [i32], arr2: &mut [i32], n1: i32, n2: i32) -> i32 {
    arr1.sort_by(|a, b| a.partial_cmp(b).unwrap());
    arr2.sort_by(|a, b| b.partial_cmp(a).unwrap());
    arr1[n1 as usize - 1] * arr2[0]
}
