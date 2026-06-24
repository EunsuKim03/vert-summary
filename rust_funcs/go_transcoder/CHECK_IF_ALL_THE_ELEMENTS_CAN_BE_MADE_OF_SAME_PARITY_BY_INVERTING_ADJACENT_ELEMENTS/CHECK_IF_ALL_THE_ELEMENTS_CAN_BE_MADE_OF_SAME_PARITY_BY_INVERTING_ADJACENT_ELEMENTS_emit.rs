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
fn f_gold(a: [i32;2], n: i32) -> i32 {
    let mut count_odd = 0;
    let mut count_even = 0;
    for i in 0..n {
        if a[i as usize] & 1 != 0 {
            count_odd = count_odd + 1; 
        } else {
            count_even = count_even + 1;
        }
    }
    if count_odd % 2 != 0 && count_even %2 != 0 {
        return 0;
    } else {
        return 1;
    }
}
