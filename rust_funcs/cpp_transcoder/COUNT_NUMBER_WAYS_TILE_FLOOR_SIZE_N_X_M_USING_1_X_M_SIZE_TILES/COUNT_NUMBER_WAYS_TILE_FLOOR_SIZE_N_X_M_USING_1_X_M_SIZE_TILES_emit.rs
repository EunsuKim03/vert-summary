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

use std::vec;

#[no_mangle]
fn f_gold(n: i32, m: i32) -> i32 {
    let mut count = vec![0; n as usize + 1];
    count[0] = 0;
    for i in 1..=n {
        if i > m {
            count[i as usize] = count[(i - 1) as usize] + count[(i - m) as usize];
        } else if i < m {
            count[i as usize] = 1;
        } else {
            count[i as usize] = 2; 
        }
    }
    count[n as usize]
}
