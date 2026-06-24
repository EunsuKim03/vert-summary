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

use std::f32;

#[no_mangle]
fn f_gold(a: [i32;2], b: [i32;2], n: i32) -> i32 {  
    let mut s = 0f32;  
    for i in 0..n {  
        s += (a[i] + b[i]) as f32;  
    }  
    if n == 1 { return a[0] + b[0]; }  
    if s % n as f32 != 0f32 { return -1; }  
    let mut x = s / n as f32;  
    for i in 0..n {  
        if a[i] > x { return -1; }  
        if i > 0 {  
            a[i] += b[i - 1];  
            b[i - 1] = 0;  
        }  
        if a[i] == x { continue; }  
        let mut y = a[i] + b[i];  
        if i + 1 < n { y += b[i + 1]; }  
        if y == x {  
            a[i] = y;  
            b[i] = b[i + 1] = 0;  
            continue;  
        }  
        if a[i] + b[i] == x {  
            a[i] += b[i];  
            b[i] = 0;  
            continue;  
        }  
        if i + 1 < n && a[i] + b[i + 1] == x {  
            a[i] += b[i + 1];  
            b[i + 1] = 0;  
            continue;  
        }  
        return -1;  
    }  
    for i in 0..n {  
        if b[i] != 0 { return -1; }  
    }  
    return x as i32;  
}
