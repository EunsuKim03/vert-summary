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

use std::io::prelude::*;

#[no_mangle]
fn f_gold(price: [i32;2], n: i32) -> i32 {
    let mut profit = vec![0; n as usize];
    let mut max_price = price[n as usize - 1];
    for i in (0..n-1).rev() {
        if price[i as usize] > max_price {
            max_price = price[i as usize];
        }
        profit[i as usize] = profit[(i + 1) as usize].max(max_price - price[i as usize]);
    }
    let mut min_price = price[0];
    for i in 1..n {
        if price[i as usize] < min_price {
            min_price = price[i as usize];
        }
        profit[i as usize] = profit[(i - 1) as usize].max(profit[i as usize] + (price[i as usize] - min_price));
    }
    profit[n as usize - 1]
}
