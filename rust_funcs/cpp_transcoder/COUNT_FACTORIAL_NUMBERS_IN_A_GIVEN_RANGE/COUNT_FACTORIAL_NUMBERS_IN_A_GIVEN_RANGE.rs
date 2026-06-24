fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(low: f32, high: f32) -> i32 {
    let mut fact = 1.0; 
    let mut x = 1.0;
    while fact < low  {
        fact *= x;
        x += 1.0;
    }
    let mut res = 0.0;
    while fact <= high  {
        res += 1.0;
        fact *= x;
        x += 1.0;
    }
    res
}
