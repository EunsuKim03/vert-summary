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
fn f_gold(arr: [f32;2], n: f32, sum: f32) -> i32 {
    let mut subset = vec![vec![0; sum as usize + 1]; 2];
    for i in 0..=n as usize {
        for j in 0..=sum as usize {
            if j == 0 {
                subset[i % 2][j] = 1; 
            } else if i == 0 {
                subset[i % 2][j] = 0;
            } else if arr[i - 1] <= j as f32 {
                subset[i % 2][j] = subset[(i + 1) % 2][j - arr[i - 1] as usize] || subset[(i + 1) % 2][j];
            } else {
                subset[i % 2][j] = subset[(i + 1) % 2][j]; 
            }
        }
    }
    subset[n as usize % 2][sum as usize]
}
