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

use std::io::prelude::*;

#[no_mangle]
fn f_gold(mut n: i32) -> i32 {
   let mut odd_count = 0;
   let mut even_count = 0;
   if n < 0 { n = -n; }
   if n == 0 { return 1; } 
   if n == 1 { return 0; }
   while n > 0 {
     if n & 1 == 1 { odd_count += 1; }
     if n & 2 == 2 { even_count += 1; }  
     n >>= 2;
   }
   return f_gold(odd_count as i32 - even_count as i32); 
}
