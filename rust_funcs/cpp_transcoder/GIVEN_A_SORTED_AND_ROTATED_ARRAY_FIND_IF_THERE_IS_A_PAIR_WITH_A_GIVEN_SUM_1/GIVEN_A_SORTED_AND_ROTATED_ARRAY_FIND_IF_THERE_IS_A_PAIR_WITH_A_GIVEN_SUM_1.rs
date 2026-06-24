fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;
use std::vec;
use std::fs::File;
use std::io::prelude::*;
 
fn f_gold(arr: &mut [f32], n: i32, x: i32) -> i32 {
    let mut i = 0;
    while i < n as usize - 1 && arr[i] <= arr[i + 1] {
        i += 1;
    }
    let mut l = (i + 1) as usize % n as usize;
    let mut r = i;
    let mut cnt = 0;
    while l != r {
        if arr[l] + arr[r] == x as f32 {
            cnt += 1;
            if l == (r - 1 + n as usize) % n as usize {
                return cnt;
            }
            l = (l + 1) % n as usize;
            r = (r - 1 + n as usize) % n as usize;
        } else if arr[l] + arr[r] < x as f32 {
            l = (l + 1) % n as usize;
        } else {
            r = (n as usize + r - 1) % n as usize;
        }
    }
    cnt
}
