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

use std::collections::VecDeque;

#[no_mangle]
fn f_gold(str: String) -> i32 {
    let mut stack: VecDeque<char> = VecDeque::new();
    for ch in str.chars() {
        if ch == ')' {
            let top = stack.pop().unwrap();
            let mut elements_inside = 0;
            while top != '(' {
                elements_inside += 1;
                top = stack.pop().unwrap();
            }
            if elements_inside < 1 {
                return 1;
            }
        } else {
            stack.push(ch);
        }
    }
    0
}
