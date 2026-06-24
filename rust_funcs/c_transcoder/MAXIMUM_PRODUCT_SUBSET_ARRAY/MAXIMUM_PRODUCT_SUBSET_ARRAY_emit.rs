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
fn f_gold(a: [i32;2], n: u32) -> i32 {
    if n == 1 {
        return a[0];
    }
    let mut max_neg = i32::MIN;
    let mut count_neg = 0; 
    let mut count_zero = 0;
    let mut prod = 1;
    for i in 0..n {
        if a[i] == 0 {
            count_zero += 1;
            continue;
        }
        if a[i] < 0 {
            count_neg += 1;
            max_neg = max_neg.max(a[i]);
        }
        prod *= a[i];
    }
    if count_zero == n {
        return 0;
    }
    if count_neg % 2 != 0 {
        if count_neg == 1 && count_zero > 0 && count_zero + count_neg == n {
            return 0;
        }
        prod /= max_neg;
    }
    prod  
}
