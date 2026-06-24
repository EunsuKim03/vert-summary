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


use std::str;

#[no_mangle]
fn f_gold(str: &str) -> i32 {
    let n = str.len();
    let mut res = 0;
    let mut count = [0; 26];
    for i in 0..n {
        count[str.as_bytes()[i] as usize - b'a' as usize] += 1;
    }
    for i in 0..26 {
        if count[i] % 2 == 1 {
            res += 1;
        }
    }
    if res == 0 {
        0
    } else {
        res - 1
    } 
}
