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
fn f_gold(n: i32, k: i32) -> i32 {
    let mut total :i32 = k as i32;
    let r#mod = 1000000007 as i32;
    let mut same = 0;
    let mut diff = k as i32;
    for i in 2..=n{
        same = diff;
        diff = total*(k-1) as i32;
        diff = diff % r#mod;
        total = (same + diff) % r#mod;
    }
    total
}
