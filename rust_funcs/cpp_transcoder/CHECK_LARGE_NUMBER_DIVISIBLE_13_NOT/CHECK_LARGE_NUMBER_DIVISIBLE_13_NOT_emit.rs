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

#[no_mangle]
fn f_gold(mut num: String) -> i32 {
    let mut length = num.len();
    if length == 1 && num.chars().nth(0).unwrap() == '0' {
        return 1; 
    }
    if length % 3 == 1 {
        num.push_str("00");
        length += 2;
    } else if length % 3 == 2 {
        num.push('0');
        length += 1;
    }
    let mut sum = 0;
    let mut p = 1;
    for i in (0..length).rev() {
        let mut group = 0;
        group += num.chars().nth(i).unwrap() as i32 - '0' as i32;
        group += (num.chars().nth(i - 1).unwrap() as i32 - '0' as i32) * 10;
        group += (num.chars().nth(i - 2).unwrap() as i32 - '0' as i32) * 100;
        sum = sum + group * p;
        p *= -1;
    }
    sum = sum.abs();
    if sum % 13 == 0 {
        return 1;
    } 
    0 
}
