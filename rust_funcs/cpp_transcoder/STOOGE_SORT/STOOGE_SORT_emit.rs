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
fn f_gold(arr: &mut [f32], l: u32, h: u32) {
    if l >= h {
        return;
    }
    if arr[l] > arr[h] {
        arr.swap(l, h);
    }
    if h - l + 1 > 2 {
        let t = (h - l + 1) / 3;
        f_gold(arr, l, h - t);
        f_gold(arr, l + t, h); 
        f_gold(arr, l, h - t);
    } 
}
