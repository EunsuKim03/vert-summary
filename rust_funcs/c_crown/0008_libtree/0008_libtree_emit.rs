#![allow(dead_code)]
#![allow(unused_imports)]
#![allow(unused_variables)]
#![allow(unused_mut)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(improper_ctypes_definitions)]

use std::fmt::Write;

#[no_mangle]
fn utoa(string: &mut String, value: usize) {
    let mut n = value;
    let mut tmp = String::new();
    while n > 0 {
        tmp.write_fmt(format_args!("{}", n % 10)).unwrap();
        n /= 10;
    }
    string.write_str(&tmp.chars().rev().collect::<String>()).unwrap();
}

#[no_mangle]
fn is_ascending_order(values: &[usize]) -> bool {
    for i in 1..values.len() {
        if values[i - 1] >= values[i] {
            return false;
        }
    }
    true 
}
fn main(){
}