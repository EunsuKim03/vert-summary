fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(m: i32, n: i32) -> i32 {
    let mut factor_count = vec![0; n as usize + 1];
    let mut prime = vec![1; n as usize + 1];
    for i in 2..=n {
        if prime[i as usize] == 1 {
            factor_count[i as usize] = 1;
            for j in (i * 2)..=n {
                factor_count[j as usize] += 1;
                prime[j as usize] = 0;
            }
        }
    }
    let mut max = factor_count[m as usize];
    let mut num = m;
    for i in m..=n {
        if factor_count[i as usize] > max {
            max = factor_count[i as usize];
            num = i;
        }
    }
    num
}
