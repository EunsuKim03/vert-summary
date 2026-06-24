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


use std::str;

#[no_mangle]
fn f_gold(s: &str) -> i32 {
    let n = s.len();
    let mut count = 0;
    for i in 0..n {
        if s.chars().nth(i).unwrap() == '4' || s.chars().nth(i).unwrap() == '8' || s.chars().nth(i).unwrap() == '0' {
            count += 1;
        }
    }
    for i in 0..n-1 {
        let h = (s.chars().nth(i).unwrap() as i32 - '0' as i32) * 10 + (s.chars().nth(i + 1).unwrap() as i32 - '0' as i32);
        if h % 4 == 0 {
            count += i as i32 + 1;
        }
    }
    count
}
