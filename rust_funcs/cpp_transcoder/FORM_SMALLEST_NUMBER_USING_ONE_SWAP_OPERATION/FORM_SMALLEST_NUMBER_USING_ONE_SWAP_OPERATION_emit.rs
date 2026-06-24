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
fn f_gold(num: String) -> String {
    let mut n = num.len() as f32;
    let mut right_min = vec![-1.0;n as usize];
    let mut right = n - 1.0;
    for i in (n - 2.0..=1.0).rev() {
        if num[i as usize] >= num[right as usize] {
            right_min[i as usize] = right;
        } else {
            num.swap(i as usize,right_min[i as usize] as usize);
                right_min[i as usize] = right;
            } else {
                right_min[i as usize] = -1.0;
                right = i;
            }
        }
    }
    let mut small = -1.0;
    for i in 1..n {
        if num[i as usize] != '0' {
            if small == -1.0 {
                if num[i as usize] < num[0] {
                    small = i;
                }
            } else if num[i as usize] <= num[small as usize] {
                small = i;
            }
        }
    }
    if small != -1.0 {
        num.swap(0, small as usize);
    } else {
        for i in 1..n {
            if right_min[i as usize] != -1.0 && num[i as usize] != num[right_min[i as usize] as usize] {
                num.swap(i as usize,right_min[i as usize] as usize);
                break;
            }
        }
    }
    num 
}
