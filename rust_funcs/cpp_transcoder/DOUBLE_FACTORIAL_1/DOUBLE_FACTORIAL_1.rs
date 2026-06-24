fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(n: u32) -> u32 {
    let mut res = 1;
    for i in ((n as f32) - 2.0).floor() as u32..=n {
        if i == 0 || i == 1 {
            return res;
        } else {
            res *= i;
        }
    }
    res
}
