fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io::prelude::*;

fn f_gold(n: i32) -> i32 {
    let mut arr = [0; 10];
    let mut n = n;
    while n > 0 {
        let digit = (n % 10) as usize;
        if arr[digit] {
            return 0;
        }
        arr[digit] = 1;
        n /= 10;
    }
    1
}
