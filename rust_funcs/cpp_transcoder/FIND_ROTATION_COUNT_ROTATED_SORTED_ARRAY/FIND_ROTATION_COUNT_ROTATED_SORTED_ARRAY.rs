fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs;

fn f_gold(arr: &mut [f32], n: i32) -> i32 {
    let mut min = arr[0]; 
    let mut min_index = 0;
    for i in 0..n {
        if min > arr[i as usize] {
            min = arr[i as usize];
            min_index = i;
        }
    }
   min_index
}
