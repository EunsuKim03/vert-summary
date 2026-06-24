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


use std::f32;

#[no_mangle]
fn f_gold(m: i32, n: i32) -> i32 {
    let mut T = vec![vec![0; n as usize + 1]; m as usize + 1];
    for i in 1..=m {
        for j in 1..=n {
            if i < j {
                T[i as usize][j as usize] = 0;
            } else if j == 1 {
                T[i as usize][j as usize] = i;
            } else {
                T[i as usize][j as usize] = T[(i - 1) as usize][j as usize] + T[(i / 2) as usize][(j - 1) as usize];
            }
        }
    }
    T[m as usize][n as usize]
}
