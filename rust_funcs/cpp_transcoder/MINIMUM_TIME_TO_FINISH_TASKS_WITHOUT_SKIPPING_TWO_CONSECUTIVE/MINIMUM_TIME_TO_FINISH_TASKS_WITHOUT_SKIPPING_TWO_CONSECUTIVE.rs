fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [f32;2], n: i32) -> i32 {
    if n <= 0 {
        return 0.0;
    }
    let mut incl = arr[0];
    let mut excl = 0.0;
    for i in 1..n as usize {
        let incl_new = arr[i] + incl.min(excl);
        let excl_new = incl;
        incl = incl_new;
        excl = excl_new;
    }
    incl.min(excl)
}
