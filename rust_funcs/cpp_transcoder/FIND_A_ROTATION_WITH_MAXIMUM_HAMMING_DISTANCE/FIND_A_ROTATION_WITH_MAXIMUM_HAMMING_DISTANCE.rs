fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;
use std::fs::File;
use std::io::prelude::*;

fn f_gold(arr: &mut [i32], n: i32) -> i32 {
    let mut brr = vec![0; (2*n) as usize + 1];
    for i in 0..n as usize {
        brr[i] = arr[i]; 
    }
    for i in 0..n as usize {
        brr[n as usize + i] = arr[i];
    }
    let mut max_ham = 0; 
    for i in 1..n as usize {
        let mut curr_ham = 0;
        for j in i..i+n as usize {
            let k = j - i;
            if brr[j] != arr[k] {
                curr_ham += 1;
            }
        }
        if curr_ham == n  {
            return n;
        }
        max_ham = max_ham.max(curr_ham);
    }
max_ham 
}
