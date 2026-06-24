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
fn f_gold( mut str : &str) -> i32 {
    let len = str.len();
    if str.chars().nth(0).unwrap() < 'A' || str.chars().nth(0).unwrap() > 'Z' {return 0;}
    if str.chars().nth(len-1).unwrap() != '.' {return 0;}
    let mut prev_state = 0;
    let mut curr_state = 0;
    let mut index = 1;
    while index < len {
        if str.chars().nth(index).unwrap() >= 'A' && str.chars().nth(index).unwrap() <= 'Z' {curr_state = 0;}
        else if str.chars().nth(index).unwrap() == ' '  {curr_state = 1;}
        else if str.chars().nth(index).unwrap() >= 'a' && str.chars().nth(index).unwrap() <= 'z' {curr_state = 2;}
        else if str.chars().nth(index).unwrap() == '.' {curr_state = 3;}
        if prev_state == curr_state && curr_state != 2 {return 0;}
        if prev_state == 2 && curr_state == 0 {return 0;}
        if curr_state == 3 && prev_state != 1 {return (index+1 == len) as i32;}
        index += 1;
        prev_state = curr_state;
    }
    0
}
