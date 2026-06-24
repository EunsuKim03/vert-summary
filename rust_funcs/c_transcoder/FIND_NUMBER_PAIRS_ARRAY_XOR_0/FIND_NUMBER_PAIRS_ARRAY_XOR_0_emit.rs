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

use std::cmp::Ordering;

#[no_mangle]
fn f_gold(a: &mut [i32], n: i32) -> i32 {
    a.sort_by(|a, b| a.cmp(b));
    let mut count = 1;
    let mut answer = 0;
    for i in 1..n as usize {
        if a[i] == a[i-1] {
            count += 1;
        } else {
            answer += (count * (count - 1)) / 2;
            count = 1;
        }
    }
    answer += (count * (count - 1)) / 2;
    answer
}
