fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;

fn f_gold(arr: &mut [f32], N: f32) -> i32 {
    if N < 3.0 {
        return 0.0;  
    }
    arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
    for i in 0..(N-2.0) as usize {
        if arr[i] + arr[i+1] > arr[i+2] {
            return 1.0;
        }
    }
    0.0
}
