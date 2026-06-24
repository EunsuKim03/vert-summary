fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;
fn f_gold(arr: &mut [i32], k: i32) -> i32 {
    let mut max_sum = 0;
    arr.sort();
    let mut i = arr.len() - 1;
    while i > 0 {
        if (arr[i] - arr[i - 1]) < k  {
            max_sum += arr[i];
            max_sum += arr[i - 1];
            i -= 1;
        }
        i -= 1;
    }
    max_sum
}
