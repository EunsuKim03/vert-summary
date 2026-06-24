fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: i32) -> i32 {
    if n < 0 {
        return 0;
    }
    if n <= 1 {
        return 1;
    }
    let mut digits: f32 = 0.0;
    for i in 2..=n {
        digits += f32::log10(i as f32);
    }
    return digits.floor() as i32 + 1; 
}
