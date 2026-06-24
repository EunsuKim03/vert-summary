fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: &mut [i32], n: i32, key: i32, capacity: i32) -> i32 {
    if n >= capacity {return n};
    let mut i = n - 1;
    while i >= 0 && arr[i as usize] > key {
        arr[i as usize + 1] = arr[i as usize];
        i = i - 1;
    } 
    arr[i as usize + 1] = key;
    n + 1
}
