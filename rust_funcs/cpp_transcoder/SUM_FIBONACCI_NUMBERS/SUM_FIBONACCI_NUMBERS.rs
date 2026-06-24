fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: i32) -> i32 {
    if n <= 0{
        return 0;
    }
    let mut fibo = vec![0; n as usize + 1];
    fibo[0] = 0; 
    fibo[1] = 1;
    let mut sum = fibo[0] + fibo[1];
    for i in 2..=n {
        fibo[i as usize] = fibo[(i - 1) as usize] + fibo[(i - 2) as usize];
        sum += fibo[i as usize];
    }
    sum
}
