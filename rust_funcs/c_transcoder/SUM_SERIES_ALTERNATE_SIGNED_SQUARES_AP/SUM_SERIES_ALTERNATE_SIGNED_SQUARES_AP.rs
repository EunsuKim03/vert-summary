fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: i32, a: [i32;2]) -> i32 {
    let mut res = 0;
    for i in 0..2*n {
        if i % 2 == 0 {
            res += a[i as usize] * a[i as usize];  
        } else {
            res -= a[i as usize] * a[i as usize];
        }
    }
    return res; 
}
