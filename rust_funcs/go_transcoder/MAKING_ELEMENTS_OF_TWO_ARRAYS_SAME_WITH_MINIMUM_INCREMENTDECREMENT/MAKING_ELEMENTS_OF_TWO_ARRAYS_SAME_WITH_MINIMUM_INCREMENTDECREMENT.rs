fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;

fn f_gold(a: &mut [i32], b: &mut [i32], n: i32) -> i32 {
    a.sort_by(|x, y| x.cmp(y));
    b.sort_by(|x, y| x.cmp(y));
    let mut result = 0;
    for i in 0..n {
        result += (a[i as usize] - b[i as usize]).abs() as i32;
    }
    result
}
