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

use std::cmp::Ordering;
use std::io;

#[no_mangle]
fn f_gold(arr: &mut [i32], n: i32) -> i32 {
    arr.sort_by(|a, b| a.cmp(b));
    let mut a = 0;
    let mut b = 0;
    for i in 0..n {
        if i % 2 == 0 {
            a = a * 10 + arr[i as usize];
        } else {
            b = b * 10 + arr[i as usize];
        }
    }
    a + b
}
