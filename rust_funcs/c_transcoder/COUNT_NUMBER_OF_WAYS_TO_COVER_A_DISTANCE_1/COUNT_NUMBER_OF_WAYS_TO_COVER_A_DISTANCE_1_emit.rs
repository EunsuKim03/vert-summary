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
fn f_gold(dist: i32) -> i32 {
    let mut count = vec![1; dist as usize + 1];
    count[0] = 1;
    count[1] = 1;
    count[2] = 2;
    for i in 3..=dist {
        count[i as usize] = count[(i-1) as usize] + count[(i-2) as usize] + count[(i-3) as usize];
    }
    count[dist as usize] 
}
