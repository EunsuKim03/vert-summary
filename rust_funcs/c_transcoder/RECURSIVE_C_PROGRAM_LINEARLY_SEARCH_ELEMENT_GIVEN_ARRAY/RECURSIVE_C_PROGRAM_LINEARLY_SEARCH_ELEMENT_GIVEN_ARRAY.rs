fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: &[f32], l: f32, r: f32, x: f32) -> i32 {
    if (r < l) {
        return -1.0;
    }
    if (arr[l as usize] == x) {
        return l;
    } 
    if (arr[r as usize] == x) {
        return r;
    }
    return f_gold(&arr,l + 1.0, r - 1.0, x);
}
