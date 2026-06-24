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

use std::str::FromStr;

#[no_mangle]
fn f_gold(num: String) -> i32 {
    let series = [1, 3, 2, -1, -3, -2];
    let mut series_index = 0;
    let mut result = 0;
    for i in (0..num.len()).rev() {
        let digit = num.chars().nth(i).unwrap().to_digit(10).unwrap() as i32;
        result = result + digit * series[series_index];
        series_index = (series_index + 1) % 6; 
        result = result % 7;
    }
    if result < 0 {result = (result + 7) % 7}
    result
}
