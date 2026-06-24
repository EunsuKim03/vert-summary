fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::{self, BufRead};
use std::path::Path;

fn f_gold(arr: &mut [f32], n: u32, key: f32, capacity: u32) -> i32 {
    if n >= capacity {
        return n;
    }
    let mut i = n - 1;
    while i >= 0 && arr[i] > key {
        arr[i + 1] = arr[i];
        i -= 1;
    }
    arr[i + 1] = key;
    n + 1
}
