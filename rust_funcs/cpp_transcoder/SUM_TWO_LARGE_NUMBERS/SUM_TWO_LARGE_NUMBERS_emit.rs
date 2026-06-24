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
fn f_gold(mut str1: String, mut str2: String) -> String {
    if str1.len() > str2.len() {
        std::mem::swap(&mut str1, &mut str2);
    }
    let mut str = String::new();
    let n1 = str1.len();
    let n2 = str2.len();
    str1.reverse();
    str2.reverse();
    let mut carry = 0;
    for i in 0..n1 {
        let sum = ((str1[i] as i32 - '0' as i32) + (str2[i] as i32 - '0' as i32) + carry) as f32;
        str.reverse();
        carry = sum / 10i32 as f32; 
    }
    for i in n1..n2 {
        let sum = ((str2[i] as i32 - '0' as i32) + carry) as f32;
        str.reverse();
        carry = sum / 10i32 as f32;
    }
    if carry > 0 {
        str.push(carry as u8 as char);
    }
    str.reverse();
    str
}
