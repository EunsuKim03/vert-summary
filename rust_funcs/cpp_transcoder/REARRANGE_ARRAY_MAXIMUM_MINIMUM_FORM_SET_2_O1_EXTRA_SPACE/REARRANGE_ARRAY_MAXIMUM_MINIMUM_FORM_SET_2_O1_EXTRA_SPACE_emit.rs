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
fn f_gold(arr: &mut [f32], n: i32) {
    let mut max_idx = n - 1;
    let mut min_idx = 0;
    let max_elem = arr[n as usize - 1] + 1.0;
    for i in 0..n  {
        if i % 2 == 0 {
            arr[i as usize] += ((arr[max_idx as usize]) % max_elem) * max_elem;
            max_idx -= 1;
        } else {
            arr[i as usize] += ((arr[min_idx as usize]) % max_elem) * max_elem;
            min_idx += 1;
        }
    }
    for i in 0..n  {
        arr[i as usize] /= max_elem;
    }
}
