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
fn f_gold(n: i32) -> i32 {
    let mut ans = 0;
    let mut temp = 0;
    let mut num;
    let mut i = 1;
    while i <= n && temp < n {
        temp = i - 1;
        num = 1;
        while temp < n {
            if temp + i <= n {
                ans += i * num;
            } else {
                ans += (n - temp) * num;
            }
            temp += i;
            num += 1;
        }
        i += 1;
    }
    ans
}
