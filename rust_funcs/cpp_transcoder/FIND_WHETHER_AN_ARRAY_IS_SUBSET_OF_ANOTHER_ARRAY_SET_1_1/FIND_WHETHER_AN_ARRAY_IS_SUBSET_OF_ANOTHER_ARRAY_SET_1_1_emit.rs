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
fn f_gold(mut arr1: &mut [i32], mut arr2: &mut [i32], m: i32, n: i32) -> i32 {
    let mut i = 0;
    let mut j = 0;
    if m < n {
        return 0;
    }
    arr1.sort();
    arr2.sort();
    while i < n && j < m {
        if arr1[j] < arr2[i] {
            j += 1;   
        } else if arr1[j] == arr2[i] {
            j += 1;
            i += 1;
        } else if arr1[j] > arr2[i]  {
            return 0;
        }
    }
    if i < n {
        0
    } else {
        1
    }  
}
