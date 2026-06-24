fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32::INFINITY;

fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut res = i32::MIN;
    for i in 0..n {
        let mut curr_sum = 0;
        for j in 0..n {
            let index = (i + j) as usize % n as usize;
            curr_sum += j * arr[index];
        }
        res = res.max(curr_sum);
    }
    res
}
