fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(a: f32, b: f32, c: f32) -> i32 {
    if a > b {
        if b > c {
            b
        } else if a > c {
            c 
        } else {
            a
        }
    } else {
        if a > c {
            a
        } else if b > c {
            c
        } else {
            b
        }
    }
}
