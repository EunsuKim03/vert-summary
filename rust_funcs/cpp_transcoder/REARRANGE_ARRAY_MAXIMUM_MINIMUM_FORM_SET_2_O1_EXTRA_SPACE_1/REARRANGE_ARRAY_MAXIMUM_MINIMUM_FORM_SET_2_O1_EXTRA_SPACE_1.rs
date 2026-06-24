fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32::*;

fn f_gold(arr: &mut [f32], n: f32) {
    let mut max_ele = *arr.last().unwrap(); 
    let mut min_ele = *arr.first().unwrap();
    for i in 0..n as usize {
        if i % 2 == 0 {
            arr[i] = max_ele;
            max_ele -= 1.0;
        } else {
            arr[i] = min_ele;
            min_ele += 1.0;
        }
    }
}
