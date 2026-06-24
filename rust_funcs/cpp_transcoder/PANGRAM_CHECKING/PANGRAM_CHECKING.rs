fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::{self, Read};
use std::vec::Vec;

fn f_gold(str: String) -> i32 {
    let mut mark: Vec<i32> = vec![0; 26];
    let mut index = 0;
    for c in str.chars() {
        if c >= 'A' && c <= 'Z' {
            index = c as usize - 'A' as usize;
        } else if c >= 'a' && c <= 'z' {
            index = c as usize - 'a' as usize;
        }
        mark[index] = 1;
    }
    for i in 0..26 {
        if !mark[i]  {
            return 0;
        } 
    }
    1
}
