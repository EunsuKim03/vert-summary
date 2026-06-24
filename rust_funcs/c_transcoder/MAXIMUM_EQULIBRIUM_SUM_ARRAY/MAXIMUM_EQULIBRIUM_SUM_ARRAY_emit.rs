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
fn f_gold(arr: &[f32], n: u32) -> i32 {
    let mut res = i32::MIN;
    for i in 0..n {
        let mut prefix_sum = arr[i];
        for j in 0..i {
            prefix_sum += arr[j];
        }
        let mut suffix_sum = arr[i];
        for j in (i+1..n).rev()  {
            suffix_sum += arr[j];
        }
        if prefix_sum == suffix_sum {
            res = res.max(prefix_sum as i32);
        }
    }
    res
}
