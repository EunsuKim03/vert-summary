fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;


fn f_gold(m: i32, n: i32) -> i32 {
    let mut count = vec![vec![0; n as usize]; m as usize];
    for i in 0..m {
        count[i as usize][0] = 1;
    }
    for j in 0..n {
        count[0][j as usize] = 1;
    }
    for i in 1..m {
        for j in 1..n {
            count[i as usize][j as usize] = count[i as usize - 1][j as usize] + count[i as usize][j as usize - 1];
        }
    }
    count[(m - 1) as usize][(n - 1) as usize]
}
