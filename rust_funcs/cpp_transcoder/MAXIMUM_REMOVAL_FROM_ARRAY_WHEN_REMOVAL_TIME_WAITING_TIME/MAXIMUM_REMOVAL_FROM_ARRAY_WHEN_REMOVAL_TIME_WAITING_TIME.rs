fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp; 

fn f_gold(arr: &mut [f32], n: f32) -> i32 {  
let mut count = 0;
let mut cummulative_sum= 0.0;
arr.sort_by(|a, b| a.partial_cmp(b).unwrap());
for i in 0..n as usize {
    if arr[i] >= cummulative_sum {
        count += 1; 
        cummulative_sum += arr[i];
    }
}
count
}
