fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::{BufRead, BufReader};
use std::path::Path;

fn f_gold(A: &[f32;2], n: u32) -> i32 {
    let mut min_val = A[0];
    for i in 1..n {
        if A[i] < min_val {
            min_val = A[i];
        } 
    }
    min_val * (n - 1) as f32
}
