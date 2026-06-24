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
fn f_gold(arr: &[f32;2], n: u32) -> i32 {
    let mut c = [0f32; 3];
    let mut res = 0f32;
    for i in 0..n {
        c[arr[i] as usize % 3] += 1f32;
    }
    res += (c[0] * (c[0] - 1f32)) / 2f32;
    res += c[1] * c[2];
    res += (c[0] * (c[0] - 1f32) * (c[0] - 2f32)) / 6f32;
    res += (c[1] * (c[1] - 1f32) * (c[1] - 2f32)) / 6f32;
    res += (c[2] * (c[2] - 1f32) * (c[2] - 2f32)) / 6f32;
    res += c[0] * c[1] * c[2];
    res 
}
