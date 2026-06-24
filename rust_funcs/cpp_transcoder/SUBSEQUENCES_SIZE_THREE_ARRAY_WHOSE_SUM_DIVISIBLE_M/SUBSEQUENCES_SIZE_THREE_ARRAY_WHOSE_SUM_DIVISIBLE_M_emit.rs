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
fn f_gold(a: [f32;2], n: f32, m: f32) -> i32 {
 let mut sum: f32;
 let mut ans: f32 = 0.0;     
 for i in 0..n as usize {       
  for j in (i + 1)..n as usize {       
   for k in (j + 1)..n as usize {             
    sum = a[i] + a[j] + a[k];            
    if sum % m == 0.0 {ans += 1.0;}        
   }     
  } 
 }
 ans
}
