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
fn f_gold(set: [i32;2], n: i32, sum: i32) -> i32 {
    let mut subset = vec![vec![0; sum as usize + 1]; n as usize + 1];
    for i in 0..=n {
        subset[i as usize][0] = 1;
    }
    for i in 1..=sum {
        subset[0][i as usize] = 0;
    }
    for i in 1..=n {
        for j in 1..=sum {
            if j < set[i as usize - 1] {
                subset[i as usize][j as usize] = subset[i as usize - 1][j as usize];
            }
            if j >= set[i as usize - 1] {
                subset[i as usize][j as usize] = subset[i as usize - 1][j as usize] || subset[i as usize - 1][(j - set[i as usize - 1]) as usize];
            }
        }
    }
    subset[n as usize][sum as usize]
}
