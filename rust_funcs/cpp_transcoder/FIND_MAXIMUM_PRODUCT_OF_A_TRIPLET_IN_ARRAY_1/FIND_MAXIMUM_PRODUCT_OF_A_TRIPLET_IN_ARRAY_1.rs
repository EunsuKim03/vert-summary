fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;
use std::fs;


fn f_gold(mut arr: [i32;2], n: i32) -> i32 {
    if n < 3 {
        return -1;
    }
    arr.sort();
    cmp::max(arr[0] * arr[1] * arr[n as usize - 1], arr[(n-1) as usize] * arr[(n-2) as usize] * arr[(n-3) as usize])
}
