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
fn f_gold(s: String, k: i32) -> i32 {
    let mut n = s.len();
    let mut c1 = 0;
    let mut c2 = 0;
    let mut c = 0;
    for i in 0..n {
        if s.chars().nth(i).unwrap() == 'a' {
            c1 += 1;
        }
        if s.chars().nth(i).unwrap() == 'b' {
            c2 += 1;
            c += c1;
        }
    }
    c * k + (k * (k - 1) / 2) * c1 * c2
}
