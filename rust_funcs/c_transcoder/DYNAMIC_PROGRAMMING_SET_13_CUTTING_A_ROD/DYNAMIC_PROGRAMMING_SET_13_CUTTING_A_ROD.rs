fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(price: [i32;2], n: i32) -> i32 {
    let mut val = vec![0; n as usize + 1];
    for i in 1..=n {
        let mut max_val = f32::MIN;
        for j in 0..i {
            max_val = max_val.max(price[j as usize] as f32 + val[(i - j - 1) as usize] as f32);
        }
        val[i as usize] = max_val as i32;
    }
    val[n as usize]
}
