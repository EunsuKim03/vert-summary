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


use std::cmp::Ordering;

#[no_mangle]
fn f_gold(a: [i32;2], b: [i32;2], n: i32, k: i32) -> i32 {
    let mut diff = 0;
    let mut res = 0; 
    for i in 0..n {
        let pro: i32 = a[i as usize] * b[i as usize];
        res += pro;
        if pro < 0 && b[i as usize] < 0  {
            let temp = (a[i as usize] + 2 * k) * b[i as usize];
            diff = diff.max(temp.abs() - pro.abs());
        } else if pro < 0 && a[i as usize] < 0  {
            let temp = (a[i as usize] - 2 * k) * b[i as usize];
            diff = diff.max(temp.abs() - pro.abs());

        } else if pro > 0 && a[i as usize] < 0  {
            let temp = (a[i as usize] + 2 * k) * b[i as usize];
            diff = diff.max(temp.abs() - pro.abs());
        } else if pro > 0 && a[i as usize] > 0  {
            let temp = (a[i as usize] - 2 * k) * b[i as usize];
            diff = diff.max(temp.abs() - pro.abs());
        }
    }
    res - diff
}
