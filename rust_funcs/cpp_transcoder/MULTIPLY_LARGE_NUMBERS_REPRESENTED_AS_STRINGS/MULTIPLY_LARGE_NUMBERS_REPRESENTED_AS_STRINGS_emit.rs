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

use std::vec;
#[no_mangle]
fn f_gold(num1: String, num2: String) -> String { 
    let mut len1 = num1.len();
    let mut len2 = num2.len();
    if len1 == 0 || len2 == 0 {
        return "0".to_string(); 
    }
    let mut result = vec![0; len1 + len2];
    let mut i_n1 = 0;
    let mut i_n2 = 0;
    for i in (0..len1).rev() {
        let mut carry = 0;
        let n1 = num1[i] as i32 - '0' as i32;
        i_n2 = 0;
        for j in (0..len2).rev() {
            let n2 = num2[j] as i32 - '0' as i32;
            let sum = n1 * n2 + result[i_n1 + i_n2] + carry;
            carry = sum / 10;
            result[i_n1 + i_n2] = sum % 10;
            i_n2 += 1;
        }
        if carry > 0 {
            result[i_n1 + i_n2] += carry;
        }
        i_n1 += 1;
    }
    let mut i = result.len() - 1;
    while i >= 0 && result[i] == 0 {
        i -= 1;
    }
    if i == -1 {
        return "0".to_string();  
    }
    let mut s = String::new();
    while i >= 0 {
        s.push((result[i] as u8 + b'0') as char);
        i -= 1;
    }
    s
}
