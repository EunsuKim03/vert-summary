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
fn f_gold(arr: &mut [i32], n: i32) -> i32 {
    let mut temp = arr.to_vec();
    temp.sort();
    let mut front = 0;
    while front < n as usize && temp[front] == arr[front] { front += 1; }
    let mut back = n as usize - 1; 
    while  back > 0 && temp[back] == arr[back] { back -= 1; }
    if front >= back { return 1; }
    loop {
        front +=1;
        if arr[front-1].cmp(&arr[front]) == Ordering::Less { return 0; } 
        if front == back { return 1; }
    } 
}
