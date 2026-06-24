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
    let mut res = str.chars().nth(0).unwrap() as i32 - '0' as i32;
    for i in 1..str.len() {
        if str.chars().nth(i).unwrap() == '0'  || str.chars().nth(i).unwrap() == '1' || res < 2 {
            res += str.chars().nth(i).unwrap() as i32 - '0' as i32; 
        } else {
            res *= str.chars().nth(i).unwrap() as i32 - '0' as i32;
        }
    }
    res 
}
