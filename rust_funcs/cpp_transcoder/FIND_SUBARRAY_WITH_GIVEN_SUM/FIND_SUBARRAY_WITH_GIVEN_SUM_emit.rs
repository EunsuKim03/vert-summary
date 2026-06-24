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


use std::io;

#[no_mangle]
fn f_gold(arr: &mut [f32], n: i32, sum: i32) -> i32 {
    let mut curr_sum = arr[0 as usize];
    let mut i = 0 as usize;
    let mut j = 1 as usize;
    for i in 0..n as usize  {
        curr_sum = arr[i];
        for j in i+1..n as usize {
            if curr_sum == sum as f32 {
                println!("Sum found between indexes {} and {}", i, j-1);
                return 1;
            }
            if curr_sum > sum as f32 || j == n as usize {
                break;
            }
            curr_sum += arr[j];
        }
    }
    println!("No subarray found");
    0 
}
