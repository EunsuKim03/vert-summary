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
fn f_gold(price: [i32;2], n: i32) -> i32 {
    let mut val = vec![0; n as usize + 1];
    for i in 1..=n {
        let mut max_val = i32::MIN;
        for j in 0..i {
            max_val = max_val.max(price[j as usize] + val[(i - j - 1) as usize]);
        }
        val[i as usize] = max_val;
    }
    val[n as usize]
}
