fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;

fn f_gold(arr: &mut [f32], n: u32) -> i32 {
    if n == 1 {
        return 1;
    }
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let d = arr[1] - arr[0];
    for i in 2..n {
        if (arr[i] - arr[i-1]).abs() != d {
            return 0;
        }
    }
    1
}
