fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(n: i32) -> i32 {
    let mut k = n;
    let mut imin = 1;
    let mut ans = 0;
    while imin <= n {
        let imax = n as f32 / k as f32;
        ans += k * (imax as i32 - imin + 1) as i32;
        imin = (imax + 1.0) as i32;
        k = n / imin;
    }
    ans
}
