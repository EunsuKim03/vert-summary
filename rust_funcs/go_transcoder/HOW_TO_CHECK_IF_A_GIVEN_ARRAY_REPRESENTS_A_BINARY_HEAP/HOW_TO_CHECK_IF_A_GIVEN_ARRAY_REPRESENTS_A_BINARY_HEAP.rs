fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [f32;2], i: u32, n: u32) -> i32 {
    if i > (n - 2) / 2 {
        return 1;
    }
    if arr[i] >= arr[2 * i + 1] && arr[i] >= arr[2 * i + 2] && 
        f_gold(arr, 2 * i + 1, n) == 1 && f_gold(arr, 2 * i + 2, n) == 1 {
        return 1;
    }
    0
}
