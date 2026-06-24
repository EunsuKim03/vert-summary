fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::prelude::*;

fn f_gold(mut s: String, c1: char, c2: char) -> String {
    let l = s.len();
    for i in 0..l {
        if s.chars().nth(i).unwrap() == c1 {
            s.replace_range(i..i + 1, c2.to_string().as_str());
        } else if s.chars().nth(i).unwrap() == c2 {
            s.replace_range(i..i + 1, c1.to_string().as_str());
        }
    }
    s
}
