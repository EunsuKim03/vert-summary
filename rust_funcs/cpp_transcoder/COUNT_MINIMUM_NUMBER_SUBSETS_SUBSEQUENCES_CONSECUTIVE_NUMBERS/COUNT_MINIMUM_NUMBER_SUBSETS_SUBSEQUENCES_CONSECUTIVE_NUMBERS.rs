fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs;
 
fn f_gold(arr: &mut [f32], n: i32) -> i32 {
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let mut count = 1i32;
    let mut i = 0;
    while i < n - 1 {
        if arr[i] + 1.0 != arr[i + 1] {
            count += 1;
        }
        i += 1;
    }
    count
}
