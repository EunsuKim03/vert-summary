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
fn f_gold(mut s: String, c1: char, c2: char) -> String {
    let l = s.len();
    for i in 0..l {
        if s.chars().nth(i).unwrap() == c1 {
            s.replace_range(i..i + 1, c2.to_string().as_str());
        } else if s.chars().nth(i).unwrap() == c2 {
            s.replace_range(i..i + 1, c1.to_string().as_str());
        }
    }
    s
}
