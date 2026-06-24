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


use std::collections::HashMap;

#[no_mangle]
fn f_gold(arr: [i32;2], N: i32, k: i32) -> i32 {
    let mut MS = vec![0; N as usize];
    MS[N as usize - 1] = arr[N as usize - 1];
    for i in (0..N-1).rev() {
        if i + k + 1 >= N  {
             MS[i as usize] = arr[i as usize].max(MS[i as usize + 1]);
        } else {
            MS[i as usize] = arr[i as usize] + MS[i as usize + k as usize + 1]
                                    .max(MS[i as usize + 1]);
        }
    }
    MS[0]
}
