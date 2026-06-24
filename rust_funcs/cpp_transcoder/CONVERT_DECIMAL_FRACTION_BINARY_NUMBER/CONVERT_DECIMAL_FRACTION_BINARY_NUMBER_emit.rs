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
fn f_gold(num: f32, k_prec: i32) -> string {
    let mut binary = String::new();
    let Integral: i32 = num as i32;  
    let mut fractional = num - (Integral as f32);
 
    while Integral > 0 {
        let rem = Integral % 2;
        binary.push((rem + '0') as char);
        Integral /= 2;
    }
    binary.reverse();
    binary.push('.');
    while k_prec > 0 {
        fractional *= 2.0;
        let fract_bit = fractional as i32;
        if fract_bit == 1 {
            fractional -= fract_bit as f32;
            binary.push((1 + '0') as char);
        } else {
            binary.push((0 + '0') as char); 
        }
        k_prec -= 1;
    }
    binary
}
