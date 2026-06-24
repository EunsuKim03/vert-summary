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


#[no_mangle]
fn f_gold(x: u32, p1: u32, p2: u32, n: u32) -> i32 {
    let mut set1 = (x >> p1) & ((1u32 << n) - 1);
    let mut set2 = (x >> p2) & ((1u32 << n) - 1);
    let mut xor = (set1 ^ set2);
    xor = (xor << p1) | (xor << p2);
    let result = x ^ xor;
    result 
}
