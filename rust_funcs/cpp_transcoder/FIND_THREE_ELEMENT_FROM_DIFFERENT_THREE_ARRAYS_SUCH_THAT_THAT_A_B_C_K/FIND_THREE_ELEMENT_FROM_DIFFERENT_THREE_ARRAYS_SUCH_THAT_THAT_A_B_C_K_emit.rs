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
fn f_gold(a1: [f32;2], a2: [f32;2], a3: [f32;2], n1: f32, n2: f32, n3: f32, sum: f32) -> i32 {
    for i in 0..n1 as usize {
        for j in 0..n2 as usize {
            for k in 0..n3 as usize {
                if a1[i] + a2[j] + a3[k] == sum {
                    return 1.0;
                }
            }
        }
    }
    0.0
}
