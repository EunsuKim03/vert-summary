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


use std::convert::TryInto;

#[no_mangle]
fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut lioes = vec![1; n.try_into().unwrap()];
    let mut max_len = 0;
    
    for i in 1..n {
        for j in 0..i {
            if arr[i as usize] > arr[j as usize] 
                && (arr[i as usize] + arr[j as usize]) % 2 != 0 
                && lioes[i as usize] < lioes[j as usize] + 1
            {
                lioes[i as usize] = lioes[j as usize] + 1;
            }
        }
    }
    
    for i in 0..n {
        if max_len < lioes[i as usize] {
            max_len = lioes[i as usize];
        }
    }
    
    max_len
}
