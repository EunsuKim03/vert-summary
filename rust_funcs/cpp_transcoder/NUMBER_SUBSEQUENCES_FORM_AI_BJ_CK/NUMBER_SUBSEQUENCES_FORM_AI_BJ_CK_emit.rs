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

use std::fs::File;
use std::io::prelude::*;

#[no_mangle]
fn f_gold(s: String) -> i32 {
    let mut a_count = 0; 
    let mut b_count = 0;
    let mut c_count = 0;
    for i in 0..s.len() {
        if s.chars().nth(i).unwrap() == 'a' {
            a_count = 1 + 2 * a_count;
        } else if s.chars().nth(i).unwrap() == 'b' {
            b_count = a_count + 2 * b_count;
        } else if s.chars().nth(i).unwrap() == 'c' {
            c_count = b_count + 2 * c_count;
        }
    }
    c_count
}
