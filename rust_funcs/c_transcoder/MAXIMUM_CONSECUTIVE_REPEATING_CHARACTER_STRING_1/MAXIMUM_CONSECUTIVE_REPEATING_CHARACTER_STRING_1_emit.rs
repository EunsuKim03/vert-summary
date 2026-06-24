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
fn f_gold(str: &str) -> char {
    let mut count = 0;
    let mut res = str.chars().nth(0).unwrap();
    let mut cur_count = 1;
    for (i, c) in str.chars().enumerate() {
        if i < str.len() - 1 && c == str.chars().nth(i + 1).unwrap() {
            cur_count += 1;
        } else {
            if cur_count > count {
                count = cur_count;
                res = c;
            }
            cur_count = 1;
        }
    }
    res
}
