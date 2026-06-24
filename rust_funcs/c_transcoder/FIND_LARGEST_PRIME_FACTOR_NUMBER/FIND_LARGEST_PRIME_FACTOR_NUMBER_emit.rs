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
fn f_gold(mut n: i32) -> i32 {
    let mut max_prime = -1;
    while n % 2 == 0 {
        max_prime = 2;
        n /= 2;
    }
    for i in (3..(n as f32).sqrt() as i32).step_by(2)  {
        while n % i == 0 {
            max_prime = i;
            n /= i;
        }
    }
    if n > 2 {
        max_prime = n;
    }
    max_prime
}
