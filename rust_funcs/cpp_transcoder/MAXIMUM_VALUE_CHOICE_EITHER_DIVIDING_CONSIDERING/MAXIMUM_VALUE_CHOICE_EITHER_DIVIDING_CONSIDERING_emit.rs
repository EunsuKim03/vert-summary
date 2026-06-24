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

use std::f32::MAX;

#[no_mangle]
fn f_gold(n: i32) -> i32 {
   let mut res = vec![0; n as usize + 1];
   res[0] = 0; 
   res[1] = 1;
   for i in 2..=n {
        res[i as usize] = res[i as usize / 2] + res[i as usize / 3] + res[i as usize / 4] + res[i as usize / 5];
   }
   return *res.last().unwrap();
}
