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

use std::char;

#[no_mangle]
fn f_gold(str: &[char]) -> i32 {
    let mut last = str[0];
    let mut i = 1;
    let mut counter = 0;
    while i < str.len() {
        if str[i] == '0' && last == '1' {
            while str[i] == '0' {
                i += 1;
            }
            if str[i] == '1' {
                counter += 1;
            }
        }
        last = str[i];
        i += 1;
    }
    counter
}
