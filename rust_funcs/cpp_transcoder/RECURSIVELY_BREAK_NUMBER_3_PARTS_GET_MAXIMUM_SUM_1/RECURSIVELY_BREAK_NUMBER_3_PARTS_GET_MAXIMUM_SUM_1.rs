fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;
use std::convert::TryFrom;

fn f_gold(n: i32) -> i32 {
    let mut dp: Vec<f32> = vec![0.0, 1.0];
    for i in 2..=TryFrom::try_from(n).unwrap() {
        dp.push(
            dp[(i as f32 / 2.0).floor() as usize] +
                dp[(i as f32 / 3.0).floor() as usize] +
                dp[(i as f32 / 4.0).floor() as usize]
                .max(i as f32)
        );
    }
    dp[n as usize] as i32 
}
