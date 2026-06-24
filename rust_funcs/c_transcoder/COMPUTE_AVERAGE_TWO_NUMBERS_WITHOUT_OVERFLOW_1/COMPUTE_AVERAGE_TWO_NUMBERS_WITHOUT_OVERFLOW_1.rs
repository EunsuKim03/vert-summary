fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(a: i32, b: i32) -> i32 {
    (a as f32 / 2.0) as i32 + 
    (b as f32 / 2.0) as i32 + 
     ((a % 2 + b % 2) as f32 / 2.0) as i32
}
