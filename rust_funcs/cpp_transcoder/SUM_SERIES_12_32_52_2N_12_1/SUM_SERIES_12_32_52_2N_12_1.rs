fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::env;
use std::io::Write;
use std::fs::File;

fn f_gold(n: i32) -> i32 {
    let mut result: i32 = (n * (2 * n - 1) * (2*n + 1)) / 3;
    result
}
