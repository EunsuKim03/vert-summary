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
    let mut bell = vec![vec![0; n as usize+1]; n as usize+1];
    bell[0][0] = 1;
    for i in 1..=n {
        bell[i as usize][0] = bell[(i-1) as usize][(i-1) as usize];
        for j in 1..=i  {
            bell[i as usize][j as usize] = bell[(i-1) as usize][(j-1) as usize] + bell[i as usize][(j-1) as usize];
        }
    }
    bell[n as usize][0]
}
