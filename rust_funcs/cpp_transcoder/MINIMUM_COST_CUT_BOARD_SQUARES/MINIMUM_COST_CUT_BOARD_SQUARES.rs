fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Reverse;

fn f_gold(x: &mut [f32], y: &mut [f32], m: u32, n: u32) -> i32 {
    let mut res = 0.;
    x.sort_by(|a, b| b.partial_cmp(a).unwrap());
    y.sort_by(|a, b| b.partial_cmp(a).unwrap());
    let mut hzntl = 1;
    let mut vert = 1;
    let mut i = 0;
    let mut j = 0;
    while i < m && j < n {
        if x[i] > y[j] {
            res += x[i] * vert as f32;
            hzntl += 1;
            i += 1;
        } else {
            res += y[j] * hzntl as f32;
            vert += 1;
            j += 1; 
        }
    }
    let mut total = 0.;
    while i < m {
        total += x[i];
        i += 1;
    }
    res += total * vert as f32;
    total = 0.;
    while j < n {
        total += y[j];
        j += 1;
    }
    res += total * hzntl as f32;
    res
}
