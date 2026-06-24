fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::vec;

fn f_gold(arr: &[f32;2], mut i: f32, n: f32) -> i32 {
    if i > (n - 2.0) / 2.0 {return 1;}
    if arr[i as u32] >= arr[(2.0 * i + 1.0) as u32] && arr[i as u32] >= arr[(2.0 * i + 2.0) as u32] && f_gold(arr, 2.0 * i + 1.0, n) == 1 && f_gold(arr, 2.0 * i + 2.0, n) == 1 {return 1;}
    return 0;
}
