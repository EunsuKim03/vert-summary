fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(a: [i32;2], n: i32) -> i32 {
    let mut zero: i32 = 0;
    let mut two: i32 = 0;
    for i in 0..n {
        if a[i as usize] == 0 {
            zero += 1;
        }
        if a[i as usize] == 2 {
            two += 1;
        }
    }
    let cnt: i32 = (zero * (zero - 1)) / 2 + (two * (two - 1)) / 2;
    cnt
}
