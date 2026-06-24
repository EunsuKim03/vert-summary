fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;

fn f_gold(arr: &mut [i32], n: i32) -> i32 {
    if n < 3 {
        return 0;
    }
    arr.sort_by(|a, b| a.cmp(b)); 
    let mut i = 0; 
    while i < n as usize - 2 {
        if arr[i] + arr[i + 1] > arr[i + 2] {
            return 1;
        }
        i += 1;
    }
    0
}
