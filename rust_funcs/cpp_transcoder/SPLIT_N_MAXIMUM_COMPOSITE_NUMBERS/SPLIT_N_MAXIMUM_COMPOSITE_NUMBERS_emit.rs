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
fn f_gold( n: i32 ) -> i32 {
    if n < 4 { return -1; }
    let mut rem = n % 4;
    if rem == 0 { return n / 4; }
    if rem == 1 {
        if n < 9  { return -1; }
        return (n - 9) / 4 + 1;
    }
    if rem == 2 { return (n - 6) / 4 + 1; }
    if rem == 3 {
        if n < 15 { return -1; }
        return (n - 15) / 4 + 2;
    } 
-1
}
