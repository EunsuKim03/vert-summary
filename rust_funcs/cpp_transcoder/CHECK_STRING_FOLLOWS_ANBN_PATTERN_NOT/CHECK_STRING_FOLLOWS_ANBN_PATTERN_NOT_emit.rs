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

use std::os::raw::c_char;

#[no_mangle]
fn f_gold(str: String) -> i32 {
    let n = str.len() as i32;
    let mut i = 0; 
    while i < n && str.chars().nth(i as usize) == Some('a') {
        i += 1;
    }
    if i * 2 != n {
        return 0;
    }
    let mut j = i; 
    while j < n && str.chars().nth(j as usize) == Some('b') {
        j += 1;
    } 
    if j != n  {
        return 0;
    }
    1
}
