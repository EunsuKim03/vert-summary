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
fn f_gold(number: String, divisor: i32) -> String { 
    let mut ans = String::new();
    let mut idx = 0;
    let mut temp = number[idx..].parse::<i32>().unwrap_or(0);
    while temp < divisor {
        temp = temp * 10 + number[idx + 1..].parse::<i32>().unwrap_or(0);
        idx += 1;
    }
    while number.len() > idx {
        ans.push_str(&(temp / divisor).to_string());
        temp = (temp % divisor) * 10 + number[idx + 1..].parse::<i32>().unwrap_or(0);
        idx += 1;
    }
    if ans.is_empty() { ans.push_str("0") }
    ans
}
