fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::prelude::*;

fn f_gold(s: String) -> i32 {
    let mut a_count = 0; 
    let mut b_count = 0;
    let mut c_count = 0;
    for i in 0..s.len() {
        if s.chars().nth(i).unwrap() == 'a' {
            a_count = 1 + 2 * a_count;
        } else if s.chars().nth(i).unwrap() == 'b' {
            b_count = a_count + 2 * b_count;
        } else if s.chars().nth(i).unwrap() == 'c' {
            c_count = b_count + 2 * c_count;
        }
    }
    c_count
}
