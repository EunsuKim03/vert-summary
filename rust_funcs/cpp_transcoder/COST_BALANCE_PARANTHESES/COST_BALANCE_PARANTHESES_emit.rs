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
fn f_gold(s: String) -> i32 {
    if s.is_empty() { 
        0 
    } 
    let mut ans = 0;
    let mut o = 0;
    let mut c = 0;
    for c in s.chars() {
        if c == '(' { o += 1; }
        if c == ')' { c += 1; }
    }
    if o != c { return -1; }
    let mut a = vec![0; s.len()];
    if s.chars().nth(0).unwrap() == '(' { a[0] = 1; }
    else { a[0] = -1; }
    if a[0] < 0 { ans += a[0].abs() as i32; }
    for i in 1..s.len() {
        if s.chars().nth(i).unwrap() == '(' { a[i] = a[i - 1] + 1; }
        else { a[i] = a[i - 1] - 1; }
        if a[i] < 0 { ans += a[i].abs() as i32; } 
    }
    ans
}
