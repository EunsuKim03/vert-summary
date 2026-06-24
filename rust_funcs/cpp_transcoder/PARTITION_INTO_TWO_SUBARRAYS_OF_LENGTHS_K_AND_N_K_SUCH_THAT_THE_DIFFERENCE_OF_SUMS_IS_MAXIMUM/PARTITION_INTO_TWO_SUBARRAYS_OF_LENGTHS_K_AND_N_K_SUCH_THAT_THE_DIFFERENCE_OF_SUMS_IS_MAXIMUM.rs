fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;
use std::f32;

fn f_gold(arr: &mut [f32], N: i32, k: i32) -> i32 {
    let mut M = cmp::max(k, N - k);
    let mut S: f32 = 0.0;
    let mut S1: f32 = 0.0;
    let mut max_difference: i32 = 0;
    for i in 0..N {
        S += arr[i as usize];
    }
    arr.sort_by(|a, b| b.partial_cmp(a).unwrap());
    for i in 0..M {
        S1 += arr[i as usize];
    }
    max_difference = (S1 - (S - S1)) as i32;
    max_difference
}
