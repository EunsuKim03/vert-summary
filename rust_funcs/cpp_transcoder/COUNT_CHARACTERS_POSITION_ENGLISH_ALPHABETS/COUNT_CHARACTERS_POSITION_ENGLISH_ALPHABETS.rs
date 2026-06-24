fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::prelude::*;

fn f_gold(mut str: String) -> i32 {
    let mut result = 0;
    for i in 0..str.len() {
        if i as usize == (str.as_bytes()[i] - b'a') as usize || i as usize == (str.as_bytes()[i] - b'A') as usize {
            result += 1;
        } 
    }
    result
}
