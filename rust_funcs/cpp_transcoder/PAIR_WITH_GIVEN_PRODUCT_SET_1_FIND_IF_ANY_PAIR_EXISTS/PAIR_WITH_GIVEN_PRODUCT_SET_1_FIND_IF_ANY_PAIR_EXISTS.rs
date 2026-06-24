fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io::{self, Write};


fn f_gold(arr: [f32;2], n: u32, x: i32) -> i32 { 
    for i in 0..n-1 {
        for j in i+1..n {
            if arr[i] * arr[j] == x as f32 {
                return 1;
            }
        } 
    }
    0
}
