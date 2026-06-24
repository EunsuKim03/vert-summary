fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::{self, BufRead};
use std::vec::Vec;

fn f_gold(arr: &mut [f32], n: u32) -> i32 {
    for i in 0..n {
        let mut j = 0;
        for j in 0..n {
            if i != j && arr[i] == arr[j] {
                break;
            }
        }
        if j == n {
            return arr[i];
        }
    }
    -1_f32  
}
