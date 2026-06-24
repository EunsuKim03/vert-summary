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


use std::string;

#[no_mangle]
fn f_gold(mut str: String) -> i32 { 
    let mut temp = String::new();
    let mut sum: i32 = 0;
    for ch in str.chars() {
        if ch.is_numeric() {
            temp.push(ch);
        } else { 
            sum += temp.parse::<i32>().unwrap();
            temp = String::new(); 
        }
    }
    sum += temp.parse::<i32>().unwrap();
    sum
}
