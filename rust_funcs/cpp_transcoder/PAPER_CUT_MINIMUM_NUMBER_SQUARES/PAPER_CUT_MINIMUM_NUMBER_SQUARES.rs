fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;
use std::rc;

fn f_gold(mut a: i32, mut b: i32) -> i32 {
    let mut result = 0;
    let mut rem = 0;
    if a < b {
        ::std::mem::swap(&mut a, &mut b);
    }
    while b > 0 {
        result += a / b;
        rem = a % b;
        a = b;
        b = rem;
    }
    result
}
