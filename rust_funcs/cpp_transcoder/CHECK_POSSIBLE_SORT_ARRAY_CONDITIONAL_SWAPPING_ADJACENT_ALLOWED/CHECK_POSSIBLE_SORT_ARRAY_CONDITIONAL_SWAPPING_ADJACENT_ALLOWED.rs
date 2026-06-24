fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32::MAX;

fn f_gold(arr: &mut [f32], n: u32) -> i32 {
    for i in 0..n-1 {
        if arr[i] > arr[i+1] {
            if (arr[i] - arr[i+1]) as i32 == 1 {
                arr.swap(i, i+1);
            } else {
                return 0;
            }
        }
    }
    1
}
