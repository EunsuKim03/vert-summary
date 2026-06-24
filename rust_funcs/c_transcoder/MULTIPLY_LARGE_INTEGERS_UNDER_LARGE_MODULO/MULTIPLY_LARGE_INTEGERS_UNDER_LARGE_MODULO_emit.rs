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

use std::collections::HashSet;

#[no_mangle]
fn f_gold(a: i32, b: i32, mod_: i32) -> i32 {
    let mut res = 0;
    let mut a = a % mod_;
    let mut b = b;
    while b > 0 {
        if b & 1 == 1 {
            res = (res + a) % mod_;
        }
        a = (2 * a) % mod_;
        b >>= 1;
    }
    res
}
