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
fn f_gold(arr: [i32;2], n: i32, x: i32) -> i32 { 
    let mut i = 0;
    while i < n as usize - 1 && arr[i] <= arr[i + 1] {
        i += 1;
    }
    let mut l = (i + 1) % n as usize;
    let mut r = i;
    while l != r {
        if arr[l] + arr[r] == x {
            return 1;
        }
        if arr[l] + arr[r] < x {
            l = (l + 1) % n as usize;
        } else {
            r = (n - 1 - r as i32) as usize % n as usize;
        }
    }
    0
}
