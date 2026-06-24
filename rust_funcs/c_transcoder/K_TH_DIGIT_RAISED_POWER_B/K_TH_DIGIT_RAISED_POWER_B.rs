fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(a: i32, b: i32, k: i32) -> i32 {
    let mut p = a.pow(b);
    let mut count = 0;
    while p > 0 && count < k {
        let rem = (p % 10) as i32;
        count += 1;
        if count == k {
            return rem;
        }
        p = p / 10;
    }
    return 0;
}
