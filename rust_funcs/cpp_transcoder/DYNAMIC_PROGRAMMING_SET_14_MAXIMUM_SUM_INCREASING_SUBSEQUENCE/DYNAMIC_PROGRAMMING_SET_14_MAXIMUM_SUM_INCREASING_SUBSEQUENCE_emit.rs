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
fn f_gold(arr: [f32;2], n: u32) -> i32 {
    let mut max = 0.0;
    let mut msis = vec![0.0; n];
    for i in 0..n {
        msis[i] = arr[i];
    }
    for i in 1..n {
        for j in 0..i {
            if arr[i] > arr[j] && msis[i] < msis[j] + arr[i] {
                msis[i] = msis[j] + arr[i];
            }
        }
    }
    for i in 0..n {
        if max < msis[i] {
            max = msis[i];
        }
    }
    max
}
