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

use std::collections::BinaryHeap; 


#[no_mangle]
fn f_gold(a: &mut [f32], b: &mut [f32], m: u32, n: u32) -> i32 {
    a.sort_by(|a, b| a.partial_cmp(b).unwrap());
    b.sort_by(|a, b| a.partial_cmp(b).unwrap());
    let mut i = 0;
    let mut j = 0;
    let mut result = f32::INFINITY;
    while i < m && j < n {
        let diff = (a[i] - b[j]).abs();
        if diff < result {
            result = diff;
        }
        match a[i].partial_cmp(&b[j]) {
            Some(Ordering::Less) => i += 1, 
            Some(Ordering::Greater) => j += 1,
            Some(Ordering::Equal) => {
                i += 1;
                j += 1;
            }
            None => unreachable!()
        }
    }
    result
}
