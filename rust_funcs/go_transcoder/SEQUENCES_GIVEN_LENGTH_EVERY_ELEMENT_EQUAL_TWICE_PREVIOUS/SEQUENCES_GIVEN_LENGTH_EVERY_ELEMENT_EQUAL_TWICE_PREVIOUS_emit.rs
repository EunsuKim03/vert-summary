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

fn main() { 
let mut m = 10;
let mut n = 5; 
 fn f_gold(m: i32, n: i32) -> i32 {
     if m < n {
         0
     } else if n == 0 {
         1
     } else {
         f_gold(m - 1, n) + f_gold(m / 2, n - 1)
     }
 }  
 println!("Maximum number of ways = {}", f_gold(m, n)); 
}
