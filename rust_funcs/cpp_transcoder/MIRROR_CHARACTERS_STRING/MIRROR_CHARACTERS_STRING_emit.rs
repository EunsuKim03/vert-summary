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
fn f_gold(mut str: String, n: i32) -> String {
    let reverse_alphabet = String::from("zyxwvutsrqponmlkjihgfedcba");
    let l = str.len();
    for i in n..l {
        str.replace(i, 1, &reverse_alphabet[(str.chars().nth(i).unwrap() as usize) - 'a' as usize]);
    }
    str
}
