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

use std::iter;
use std::vec::Vec;

#[no_mangle]
fn f_gold(pre: [f32;2], n: u32) -> i32 {
    let mut s = Vec::<f32>::new();
    let mut root = f32::NEG_INFINITY;
    for i in 0..n {
        if pre[i] < root{
            return 0;
        }
        while !s.is_empty() && s[s.len() - 1] < pre[i] {
            root = s.pop().unwrap();
        }
        s.push(pre[i]);
    }
    return 1; 
}
