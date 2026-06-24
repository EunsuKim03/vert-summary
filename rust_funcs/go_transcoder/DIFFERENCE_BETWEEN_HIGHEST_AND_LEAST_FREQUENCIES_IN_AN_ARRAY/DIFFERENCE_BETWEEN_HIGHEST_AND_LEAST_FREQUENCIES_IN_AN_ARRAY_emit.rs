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
fn f_gold(arr: &mut [i32], n: i32) -> i32 {
    arr.sort();
    let mut count = 0; 
    let mut max_count = 0; 
    let mut min_count = n;
    for i in 0..(n - 1) {
        if arr[i as usize] == arr[(i + 1) as usize] {
            count += 1;
            continue; 
        } else {
            max_count = cmp::max(max_count, count);
            min_count = cmp::min(min_count, count);
            count = 0;
        }
    }
    max_count - min_count
}
