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
fn f_gold(mut n: i32) -> i32 {
    if n < 3 {
        return n;
    }
    if n >= 3 && n < 10  {
        return n - 1;
    }
    let mut po = 1;
    while n / po > 9 {
        po *= 10;
    }
    let msd = n / po;
    if msd != 3 {
        return f_gold(msd) * f_gold(po - 1) + f_gold(msd) + f_gold(n % po);
    } else {
        return f_gold(msd * po - 1);
    }
}
