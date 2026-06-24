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
fn f_gold(num: String) -> i32 {
    let mut n = num.len();
    if n == 0 && num.chars().next().unwrap() == '0' {
        return 1;
    }
    if n % 3 == 1 {
        num = "00".to_string() + &num;
    } 
    if n % 3 == 2 {
        num = "0".to_string() + &num;
    }
    let mut g_sum = 0;
    for i in 0..n {
        let mut group = 0;
        group += (num.chars().nth(i).unwrap() - '0') as f32 * 100.0;
        group += (num.chars().nth(i + 1).unwrap() - '0') as f32 * 10.0;
        group += (num.chars().nth(i + 2).unwrap() - '0') as f32;
        g_sum += group as i32;
    }
    if g_sum > 1000 {
        num = g_sum.to_string();
        n = num.len();
        g_sum = f_gold(num);
    }
    g_sum == 999
}
