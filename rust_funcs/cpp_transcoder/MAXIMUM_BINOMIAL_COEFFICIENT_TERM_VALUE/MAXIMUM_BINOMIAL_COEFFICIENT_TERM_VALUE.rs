fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::io;

fn f_gold(n: i32) -> i32 {
    let mut C = vec![vec![0; n as usize + 1]; n as usize + 1];
    for i in 0..=n {
        for j in 0..=min(i, n) {
            if j == 0 || j == i {
                C[i as usize][j as usize] = 1;
            } else {
                C[i as usize][j as usize] = C[(i - 1) as usize][(j - 1) as usize] + C[(i - 1) as usize][j as usize];
            }
        }
    }
    let mut maxvalue = 0;
    for i in 0..=n {
        maxvalue = max(maxvalue, C[n as usize][i as usize]);
    }
    maxvalue
}
