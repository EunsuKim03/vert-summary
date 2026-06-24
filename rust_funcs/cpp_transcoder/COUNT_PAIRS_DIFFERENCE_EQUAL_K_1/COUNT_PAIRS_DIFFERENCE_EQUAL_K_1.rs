fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::collections::HashMap;

fn f_gold(arr: &mut [f32], n: u32, k: f32) -> i32 { 
let mut count = 0;
arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
let mut l = 0; 
let mut r = 0;
while r < n {
    match arr[r] - arr[l] {
        d if d == k => {
            count += 1;
            l += 1;
            r += 1;
        }
        d if d > k => l += 1,
        _ => r += 1
    }
}
count
}
