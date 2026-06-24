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
fn f_gold(n: i32) -> f32 {
    let mut i = 1;
    let mut res = 0.0;
    let mut sign = 1;
    while n > 0 {
        n -= 1;
        if sign {
            sign = !sign;
            res += (i as f32) / (i as f32 + 1.0);
            i += 1;
        } else {
            sign = !sign;
            res -= (i as f32) / (i as f32 + 1.0);
            i += 1;
        }
    }
    res
}
