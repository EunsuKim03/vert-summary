fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::mem;

fn f_gold(m: i32, n: i32, x: i32) -> i32 {
    let mut table = vec![vec![0; x as usize + 1]; n as usize + 1];
    for j in 1..=m.min(x) {
        table[1][j as usize] = 1;
    }
    for i in 2..=n {
        for j in 1..=x {
            for k in 1..=m.min(j) {
                table[i as usize][j as usize] += table[(i - 1) as usize][(j - k) as usize];
            }
        }
    }
    table[n as usize][x as usize] 
}
