fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp::Ordering;

fn f_gold(mut arr: [i32;2], n: i32) -> i32 {
    arr.sort_by(|a, b| a.cmp(b));
    arr[n as usize - 1] + arr[n as usize - 2] + arr[n as usize - 3]
}
