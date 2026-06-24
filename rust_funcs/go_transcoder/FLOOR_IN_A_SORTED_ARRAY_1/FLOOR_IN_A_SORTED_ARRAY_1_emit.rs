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
fn f_gold(arr: [f32;2], low: f32, high: f32, x: f32) -> i32 {
    if low > high { 
        return -1.;
    }
    if x >= arr[high as usize] {
        return high;
    }
    let mid = (low + high) / 2.;
    if arr[mid as usize] == x {
        return mid;
    }
    if mid > 0. && arr[(mid - 1.0) as usize] <= x && x < arr[mid as usize] {
        return mid - 1.;
    }
    if x < arr[mid as usize] {
        return f_gold(arr, low, mid - 1., x); 
    }
    return f_gold(arr, mid + 1., high, x);
}
