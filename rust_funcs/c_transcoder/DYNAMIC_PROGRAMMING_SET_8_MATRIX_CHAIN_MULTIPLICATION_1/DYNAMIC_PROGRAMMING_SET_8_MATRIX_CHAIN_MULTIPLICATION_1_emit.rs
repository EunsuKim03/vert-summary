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
fn f_gold(p: [i32;2], n: i32) -> i32 {
   let mut m = vec![vec![0; n as usize]; n as usize];
   for i in 1..n {
       m[i as usize][i as usize] = 0;
   }
   for L in 2..n {
       for i in 1..n-L+1 {
           let j = i + L - 1;
           m[i as usize][j as usize] = f32::INFINITY as i32;
           for k in i..j {
               let q = m[i as usize][k as usize] + m[k as usize + 1][j as usize] + p[i as usize - 1] * p[k as usize] * p[j as usize];
               if q < m[i as usize][j as usize] {
                   m[i as usize][j as usize] = q;
               }
           }
       }
   }
   m[1][n as usize - 1] 
}
