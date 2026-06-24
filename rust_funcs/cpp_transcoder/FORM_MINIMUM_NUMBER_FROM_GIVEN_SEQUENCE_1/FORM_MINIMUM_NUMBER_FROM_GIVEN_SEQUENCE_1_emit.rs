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
fn f_gold(seq: String) -> String {
    let n = seq.len(); 
    if n >= 9 { return "-1".to_string(); }
    let mut result = String::with_capacity(n + 1);
    let mut count = 1;
    for i in 0..=n {
        if i == n || seq.as_bytes()[i] as char == 'I' {
            for j in (i-1)..=-1 {
                result.push((count+'0') as char);
                count += 1;
                if j >= 0 && seq.as_bytes()[j] as char == 'I' { 
                    break; 
                }
            }
        }
    }
    result
}
