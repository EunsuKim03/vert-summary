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

use std::vec;

#[no_mangle]
fn f_gold(arr: [i32;2], N: i32) -> i32 {
    let mut lis: Vec<i32> = vec![1; N as usize];
    for i in 1..N {
        for j in 0..i {
            if arr[i as usize] >= arr[j as usize] && lis[i as usize] < lis[j as usize] + 1  {
                lis[i as usize] = lis[j as usize] + 1;
            }
        }
    }
    let mut max = 0;
    for i in 0..N {
        if max < lis[i as usize] {
            max = lis[i as usize];
        }
    }
    (N - max)
}
