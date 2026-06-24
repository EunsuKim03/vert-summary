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


use std::mem;
#[no_mangle]
fn f_gold(n: i32) -> i32 {
    let mut prime = vec![0; n as usize + 1];
    let max = n / 2;
    for p in 2..=max {
        if prime[p as usize] == 0 {
            for i in (p * 2)..=n {
                prime[i as usize] = p;
            }
        }
    }
    let mut sum = 0;
    for p in 2..=n {
        if prime[p as usize] != 0 {
            sum += prime[p as usize];
        } else {
            sum += p;
        }
    }
    sum 
}
