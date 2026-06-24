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
fn f_gold(mut n: i32, mut k: i32) -> i32 {
    while n % 2 == 0 {
        k -= 1;
        n /= 2;
        if k == 0 { return 2; }
    }
    let mut i = 3.0;
    while i * i <= f32::from(n)  {
        while n % i as i32 == 0 {
            if k == 1 { return i as i32; }
            k -= 1;
            n /= i as i32;
        }
        i += 2.0;
    }
    if n > 2 && k == 1 { return n; }
    -1
}
