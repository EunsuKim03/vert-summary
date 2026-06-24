#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]
#[no_mangle]
fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
#[no_mangle]
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
#[no_mangle]
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
#[no_mangle]
fn len(arr: &[i32]) -> usize {arr.len()}
#[no_mangle]
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


#[no_mangle]
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
    let mut sum = 0;
    for i in (0..=n).step_by(2) {
        sum += C[n as usize][i as usize];
    }
    sum
}
