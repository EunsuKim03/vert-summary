fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::ffi::OsStr;
use std::fs;
use std::io;
use std::io::Read;

fn f_gold(a: &mut [i32], n: i32) -> i32 {
    let mut count = 0;
    for i in 0..n {
        for j in (i + 1)..n {
            if a[i as usize] & a[j as usize] == 0 {
                count += 2;
            }
        }
    }
    count
}
