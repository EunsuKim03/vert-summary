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
fn f_gold(str: &Vec<char>, l: i32, h: i32) -> i32  {
    if l > h {
        return i32::MAX; 
    }
    if l == h {
        return 0;
    }
    if l == h - 1 {
        return if str[l as usize] == str[h as usize] {0} else {1}
    }
    return if str[l as usize] == str[h as usize] {
        f_gold(str, l + 1, h - 1)
    } else {
        min(f_gold(str, l, h - 1), f_gold(str, l + 1, h)) + 1
    }
}
