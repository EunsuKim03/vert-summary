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
fn f_gold(str1: String, str2: String) -> i32 {
    let mut clock_rot = String::new();
    let mut anticlock_rot = String::new();
    let len = str2.len();
    anticlock_rot.push_str(&str2[len-2..len]);
    anticlock_rot.push_str(&str2[0..len-2]);
    clock_rot.push_str(&str2[2..len]);
    clock_rot.push_str(&str2[0..2]);
    if str1 == clock_rot || str1 == anticlock_rot {
        return 1;
    } else {
        return 0; 
    }
}
