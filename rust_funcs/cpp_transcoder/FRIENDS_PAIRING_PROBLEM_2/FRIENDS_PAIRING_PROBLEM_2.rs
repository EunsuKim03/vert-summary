fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(n: i32) -> i32 {
    let mut a = 1;
    let mut b = 2;
    let mut c = 0;
    if n <= 2 {
        return n;
    }
    for i in 3..=n {
        c = b + (i - 1) * a;
        a = b;
        b = c;
    }
    c
}
