fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;
use std::fs::File;
use std::io::BufReader;

use std::io::prelude::*; 

fn f_gold(n: i32, k: i32, a: &mut [i32]) -> i32 {
    a.sort_by(|a, b| b.cmp(a));
    let mut f_gold = 0;
    for i in 0..n  {
        if i % k == 0 {
            f_gold += 2 * a[i as usize];
        }
    }
f_gold
}
