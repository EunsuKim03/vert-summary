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
fn f_gold(W: i32, n: i32, val:[i32;2], wt:[i32;2]) -> i32 {
     let mut dp:Vec<i32>= vec![0; W as usize + 1]; 
     let mut ans = 0;
     for i in 0..=W{
         for j in 0..n { 
             if wt[j as usize] <= i { 
                 dp[i as usize] = dp[i as usize].max(dp[(i - wt[j as usize]) as usize] + val[j as usize]);
             } 
         }
     }  
     dp[W as usize]
}
