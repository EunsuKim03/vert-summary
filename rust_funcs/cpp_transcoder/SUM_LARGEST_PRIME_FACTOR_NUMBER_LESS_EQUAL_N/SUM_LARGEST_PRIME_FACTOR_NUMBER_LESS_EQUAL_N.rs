fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::mem;
fn f_gold(n: i32) -> i32 {
    let mut prime = vec![0; n as usize + 1];
    let max = n / 2;
    for p in 2..=max {
        if prime[p as usize] == 0 {
            for i in (p * 2)..=n {
                prime[i as usize] = p;
            }
        }
    }
    let mut sum = 0;
    for p in 2..=n {
        if prime[p as usize] != 0 {
            sum += prime[p as usize];
        } else {
            sum += p;
        }
    }
    sum 
}
