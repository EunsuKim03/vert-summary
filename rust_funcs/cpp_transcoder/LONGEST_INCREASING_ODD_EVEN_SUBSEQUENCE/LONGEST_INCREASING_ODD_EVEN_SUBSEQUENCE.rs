fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [f32;2], n: i32) -> i32 {
    let mut max_len = 0;
    let mut lt = vec![1; n as usize];
    for i in 1..n as usize {
        for j in 0..i {
            if arr[i] > arr[j] && ((arr[i] + arr[j]) % 2.0) != 0.0  && lt[i] < lt[j] + 1 {
                lt[i] = lt[j] + 1;
            }
        }
    }
    for i in 0..n as usize {
        if max_len < lt[i] {
            max_len = lt[i];
        }
    }
    max_len 
}
