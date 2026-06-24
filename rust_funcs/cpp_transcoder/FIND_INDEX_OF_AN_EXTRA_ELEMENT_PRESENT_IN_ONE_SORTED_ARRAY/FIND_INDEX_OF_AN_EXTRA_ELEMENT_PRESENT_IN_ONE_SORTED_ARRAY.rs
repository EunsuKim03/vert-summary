fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::vec;
use std::fs; 

fn f_gold(arr1: [i32;2], arr2: [i32;2], n: i32) -> i32 {
    for i in 0..n {
        if arr1[i as usize] != arr2[i as usize] {
            return i; 
        }
    }
    n
}
