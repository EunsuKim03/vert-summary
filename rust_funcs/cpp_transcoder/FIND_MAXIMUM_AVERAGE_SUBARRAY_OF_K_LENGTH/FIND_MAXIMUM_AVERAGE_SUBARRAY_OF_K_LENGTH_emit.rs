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
fn f_gold(arr: [f32;2], n: f32, k: f32) -> i32 {
    let mut csum = vec![0f32;n as usize];
    csum[0] = arr[0];
    for i in 1..n as usize {
        csum[i] = csum[i-1] + arr[i];
    }
    let mut max_sum = csum[k as usize-1];
    let mut max_end = k as usize-1;
    for i in k as usize..n as usize {
        let curr_sum = csum[i] - csum[i-k as usize];
        if curr_sum > max_sum {
            max_sum = curr_sum;
            max_end = i;
        }
    }
    (max_end-k as usize+1) as f32
}
