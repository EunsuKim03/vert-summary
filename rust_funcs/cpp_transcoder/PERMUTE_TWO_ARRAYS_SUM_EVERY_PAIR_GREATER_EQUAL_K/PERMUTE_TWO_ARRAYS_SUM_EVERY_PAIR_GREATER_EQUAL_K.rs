fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;
use std::fs::File;
use std::io::{self, BufRead};
use std::path::Path;

fn f_gold(a: &mut [i32], b: &mut [i32], n: i32, k: i32) -> i32 {
    a.sort_by(|a, b| a.cmp(b));
    b.sort_by(|a, b| b.cmp(a));
    for i in 0..n  {
        if a[i as usize] + b[i as usize] < k {
            return 0;
        }
    } 
    1
}
