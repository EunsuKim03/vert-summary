fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;

fn f_gold(m: i32, n: i32) -> i32 {
    if m < n {
        0
    } else if n == 0 {
        1
    } else {
        f_gold(m - 1, n) + f_gold(m / 2, n - 1)
    } 
}
