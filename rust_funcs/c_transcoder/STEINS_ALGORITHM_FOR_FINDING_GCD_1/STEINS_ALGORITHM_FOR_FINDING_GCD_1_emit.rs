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
fn f_gold(a: i32, b: i32) -> i32 {
    if a == b {return a}
    if a == 0 {return b}
    if b == 0 {return a}
    if !a & 1 == 1  {
        if b & 1 == 1 {return f_gold(a >> 1, b);}
        else {return f_gold(a >> 1, b >> 1) << 1;}
    } 
    if !b & 1 == 1 {return f_gold(a, b >> 1);}
    if a > b {return f_gold((a - b) >> 1, b);}
    return f_gold((b - a) >> 1, a);
}
