fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp::Ordering;

fn f_gold(k: i32, x: [i32;2], y: [i32;2], n: i32) -> i32 {
    let mut dis: Vec<f32> = Vec::new();
    for i in 0..n {
        dis.push(x[i as usize] as f32 * x[i as usize] as f32 + y[i as usize] as f32 * y[i as usize] as f32);
    }
    dis.sort_by(|a, b| a.partial_cmp(b).unwrap());
    return dis[k as usize - 1] as i32;
}
