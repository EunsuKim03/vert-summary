fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::fs::File;
use std::io::Read;
use std::string::String;
use std::vec::Vec;

fn f_gold(mut n: i32) -> i32 {
    if n <=1 {
        return n;
    }
    let mut a = 0;
    let mut b = 1;
    let mut c = 1;
    let mut res = 1;
    while c < n {
        c = a + b;
        res += 1;
        a = b;
        b = c;
    }
    res
}
