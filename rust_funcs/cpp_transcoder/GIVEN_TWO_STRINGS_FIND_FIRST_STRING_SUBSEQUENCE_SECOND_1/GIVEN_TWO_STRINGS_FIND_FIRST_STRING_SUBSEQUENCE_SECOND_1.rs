fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io::prelude::*;



fn f_gold(str1: &[char], str2: &[char], m: i32, n: i32) -> i32 {
    let mut j = 0;
    for i in 0..n {
        if str1[j] == str2[i as usize] {
            j += 1;
        }
    }
    if j == m as usize {
        1
    } else {
        0
    }
}
