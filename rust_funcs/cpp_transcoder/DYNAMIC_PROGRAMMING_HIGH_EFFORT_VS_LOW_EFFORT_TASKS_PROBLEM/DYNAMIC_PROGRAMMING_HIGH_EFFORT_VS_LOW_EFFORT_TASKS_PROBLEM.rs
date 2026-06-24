fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::{self, Read};
use std::str::FromStr;

fn f_gold(high: [f32;2], low: [f32;2], n: i32) -> i32 {
    if n <= 0 { 
        0.0
    } else {
        f32::max(high[n as u32 - 1] + f_gold(high, low, n - 2), 
                  low[n as u32 - 1] + f_gold(high, low, n - 1))
    }
}
