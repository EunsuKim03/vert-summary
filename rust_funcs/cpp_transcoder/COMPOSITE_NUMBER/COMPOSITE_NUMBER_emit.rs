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
fn f_gold(n: i32) -> i32 {
    if n <= 1 {
        return 0;
    }
    if n <= 3  {
        return 0; 
    }
    if n%2 == 0 || n%3 == 0 {
        return 1;
    }
    let mut i = 5;
    while i*i <= n {
        if n%i == 0 || n%(i+2) == 0 {
            return 1;
        }
        i += 6;
    }
    0
}
