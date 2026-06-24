fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;


fn f_gold(W: i32, wt: [i32;2], val: [i32;2], n: i32) -> i32 {
    if n == 0 || W == 0 {
        return 0; 
    }
    if wt[n as usize - 1] > W {
        return f_gold(W, wt, val, n - 1);
    } else {
        return val[n as u32 - 1] + f_gold(W - wt[n as u32 - 1], wt, val, n - 1).max(f_gold(W, wt, val, n - 1));
    } 
}
