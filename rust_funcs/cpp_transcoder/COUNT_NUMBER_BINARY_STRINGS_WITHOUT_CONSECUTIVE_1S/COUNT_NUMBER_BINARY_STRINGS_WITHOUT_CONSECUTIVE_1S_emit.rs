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
fn f_gold(n: i32) -> i32 {
    let mut a = vec![1f32; n as usize];
    let mut b = vec![1f32; n as usize];
    for i in 1..n {
        a[i as usize] = a[(i-1) as usize] + b[(i-1) as usize];
        b[i as usize] = a[(i-1) as usize]; 
    }
    return (a[(n-1) as usize] + b[(n-1) as usize]) as i32;
}
