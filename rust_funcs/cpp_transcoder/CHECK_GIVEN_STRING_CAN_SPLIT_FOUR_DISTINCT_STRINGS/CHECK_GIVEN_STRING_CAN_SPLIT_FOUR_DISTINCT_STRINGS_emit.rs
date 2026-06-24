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
fn f_gold(s: String) -> i32 {
    if s.len() >= 10 {
        return 1;
    }
    for i in 1..s.len() {
        for j in i + 1..s.len() {
            for k in j + 1..s.len() {
                let s1 = &s[0..i];
                let s2 = &s[i..j];
                let s3 = &s[j..k];
                let s4 = &s[k..s.len()];
                if s1 != s2 && s1 != s3 && s1 != s4 && s2 != s3 && s2 != s4 && s3 != s4 {
                    return 1;
                }
            }
        }
    }
    0
}
