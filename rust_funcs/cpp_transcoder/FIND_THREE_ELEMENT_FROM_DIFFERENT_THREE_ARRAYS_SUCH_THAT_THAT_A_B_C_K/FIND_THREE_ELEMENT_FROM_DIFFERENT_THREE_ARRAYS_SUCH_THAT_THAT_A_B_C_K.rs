fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(a1: [f32;2], a2: [f32;2], a3: [f32;2], n1: f32, n2: f32, n3: f32, sum: f32) -> i32 {
    for i in 0..n1 as usize {
        for j in 0..n2 as usize {
            for k in 0..n3 as usize {
                if a1[i] + a2[j] + a3[k] == sum {
                    return 1.0;
                }
            }
        }
    }
    0.0
}
