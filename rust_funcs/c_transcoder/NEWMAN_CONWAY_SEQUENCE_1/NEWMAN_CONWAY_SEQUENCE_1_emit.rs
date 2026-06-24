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
fn f_gold(n: i32) -> i32 {
   let mut f = vec![0; n as usize + 1];
   f[0] = 0;
   f[1] = 1;
   f[2] = 1;
   for i in 3..=n {
       f[i as usize] = f[(f[(i - 1) as usize] - 1) as usize] + f[(i - f[(i - 1) as usize]) as usize];
   }
   f[n as usize]
}
