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
fn f_gold(arr: [f32;2], l: f32, r: f32, x: f32) -> i32 {
    if r >= l {
        let mid = l + (r - l) / 2.0;
        if arr[mid as usize] == x {
            return mid;
        }
        if mid < r && arr[(mid + 1.0) as usize] == x {
            return mid - 1.0;
        }
        if mid < r && arr[(mid + 1.0) as usize] == x {
            return mid + 1.0;
        }
        if arr[mid as usize] > x {
            return f_gold(arr, l, mid - 2.0, x);
        }
        return f_gold(arr, mid + 2.0, r, x);
    }
    -1.0
}
