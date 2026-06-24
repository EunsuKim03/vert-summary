fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32::consts::*;

fn f_gold(n: u32, k: u32) -> i32 {
    let mut one_seen = 0;
    let  mut n = n as f32;
    while n > 0.0 {
        let digit = (n % k as f32) as u32;
        if digit > 1 {
            return 0;
        }
        if digit == 1 {
            if one_seen {
                return 0;
            }
            one_seen = 1;
        }
        n /= k as f32;
    }
    1
}
