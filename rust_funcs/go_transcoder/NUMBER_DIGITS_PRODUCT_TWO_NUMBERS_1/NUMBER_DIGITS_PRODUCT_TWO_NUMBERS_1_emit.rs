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
fn f_gold(a: i32, b: i32) -> i32 {
    if a == 0 || b == 0 {
        return 1;
    }
    let a = a as f32;
    let b = b as f32;
    let a = a.abs();
    let b = b.abs();
    let log_a = a.log10();
    let log_b = b.log10();
    let sum = log_a + log_b;
    let ans = sum.floor() as i32 + 1;
    ans
}
