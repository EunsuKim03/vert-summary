fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::mem;



fn f_gold(mut x: i32, mut y: i32) -> i32 {
    while y != 0 {
        let carry = x & y;
        x = x ^ y;
        y = carry << 1;
    }
    x
}
