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


#[no_mangle]
fn f_gold(str: String) -> i32 {
    let n = str.len();
    if n == 0 {return 0}
    if n == 1 {return (str.chars().nth(0).unwrap() as i32 - '0' as i32) % 4 == 0}
    let last = str.chars().nth(n-1).unwrap() as i32 - '0' as i32;
    let second_last = str.chars().nth(n-2).unwrap() as i32 - '0' as i32;
    (second_last * 10 + last) % 4 == 0 
}
