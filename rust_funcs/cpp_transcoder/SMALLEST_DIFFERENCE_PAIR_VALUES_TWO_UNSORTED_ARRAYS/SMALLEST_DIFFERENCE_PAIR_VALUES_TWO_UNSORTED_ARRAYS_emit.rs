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

use std::cmp;

#[no_mangle]
fn f_gold(mut A:&[f32], mut B:&[f32]) -> i32 { 
    A.sort();
    B.sort();
    let mut a = 0;
    let mut b = 0;
    let mut result = f32::MAX;
    while a < m && b < n  {
        if A[a] - B[b] < result  {result = A[a] - B[b];} 
        if A[a] < B[b] {a += 1;} 
        else {b += 1;}
    }
    result
}
