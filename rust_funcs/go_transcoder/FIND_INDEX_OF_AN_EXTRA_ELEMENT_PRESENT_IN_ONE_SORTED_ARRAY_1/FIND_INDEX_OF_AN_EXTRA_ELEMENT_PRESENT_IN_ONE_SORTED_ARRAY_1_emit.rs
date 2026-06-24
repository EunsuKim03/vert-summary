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
fn f_gold(arr1: &[f32;2], arr2: &[f32;2]) -> i32 {
    let mut left = 0;
    let mut right = arr1.len() - 1;
    let mut index = arr1.len();
    while left <= right {
        let mid = (left + right) / 2;
        if arr2[mid] == arr1[mid] {
            left = mid + 1;
        } else {
            index = mid;
            right = mid - 1;
        }
    }
    index
}
