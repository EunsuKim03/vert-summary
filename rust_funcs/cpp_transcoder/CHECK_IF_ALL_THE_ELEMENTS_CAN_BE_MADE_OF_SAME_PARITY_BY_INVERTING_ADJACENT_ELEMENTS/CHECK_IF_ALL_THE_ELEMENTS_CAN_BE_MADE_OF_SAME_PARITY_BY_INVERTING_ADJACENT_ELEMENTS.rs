fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::{BufRead, BufReader};

fn f_gold(a: [i32;2], n: i32) -> i32 {
    let mut count_odd = 0;
    let mut count_even = 0;
    for i in 0..n {
        if a[i as usize] & 1 == 1 {
            count_odd += 1; 
        } else {
            count_even += 1;
        }
    }
    if count_odd % 2 == 1 && count_even % 2 == 1 {
        0
    } else {
        1
    } 
}
