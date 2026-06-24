fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::mem;
fn f_gold(n: i32, r: i32, p: i32) -> i32 {
    let mut c = vec![0; r as usize + 1];
    c[0] = 1; 
    for i in 1..=n {
        for j in (1..=i.min(r)).rev() {
             c[j as usize] = (c[j as usize] + c[(j - 1) as usize]) % p;
        }
    }
    c[r as usize]
}
