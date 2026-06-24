fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [f32;2], n: u32) -> i32 {
    if n == 1 || n == 0 {
        return 1;
    }
    if arr[n-1] < arr[n-2] {
        return 0;
    }
    return f_gold(arr, n-1);
}
