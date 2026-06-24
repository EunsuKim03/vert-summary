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
    let mut curr_sum = 0;
    let mut min_len = n + 1;
    let mut start = 0;
    let mut end = 0;
    while end < n {
        while curr_sum <= x && end < n {
            curr_sum += arr[end as usize];
            end += 1;
        }
        while curr_sum > x && start < n {
            if end - start < min_len {
                min_len = end - start;
            }
            curr_sum -= arr[start as usize];
            start += 1;
        }
    }
    min_len
}
