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


use std::io;
use std::cmp::Ordering;
use std::sync::mpsc;

#[no_mangle]
fn f_gold(n: i32) -> i32 {
    if n % 2 != 0 {return 0;}
    let mut res = 1;
    let mut i = 2_f32;
    while i <= (n as f32).sqrt()  {
        let mut count = 0;
        let mut curr_sum = 1;
        let mut curr_term = 1;
        while n % i as i32 == 0 {
            count += 1;
            n /= i as i32;
            if i == 2_f32 && count == 1 {curr_sum = 0;}
            curr_term *= i as i32;
            curr_sum += curr_term;
        }
        res *= curr_sum;
        i += 1_f32;
    }
    if n >= 2 {res *= 1 + n;}
    res
}
