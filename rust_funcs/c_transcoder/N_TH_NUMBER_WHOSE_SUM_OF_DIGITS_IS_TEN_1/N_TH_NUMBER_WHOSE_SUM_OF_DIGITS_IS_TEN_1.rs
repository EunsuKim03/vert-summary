fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: i32) -> i32 {
    let mut count = 0;
    let mut curr = 19;
    
    loop {
        let mut sum = 0;
        let mut x = curr as f32;
        while x > 0.0 {
            sum += x.rem_euclid(10.0) as i32;
            x /= 10.0; 
        }
        if sum == 10 {
            count += 1;
        }
        if count == n {
            return curr;
        }
        curr += 9;
    }
}
