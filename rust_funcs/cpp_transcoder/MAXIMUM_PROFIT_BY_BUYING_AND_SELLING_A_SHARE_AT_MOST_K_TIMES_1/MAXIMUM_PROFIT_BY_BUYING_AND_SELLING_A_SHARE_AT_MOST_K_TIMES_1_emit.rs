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
fn f_gold(price: [f32;2], n: u32, k: u32) -> i32 {
    let mut profit = vec![vec![0.0; n + 1]; k + 1]; 
    for i in 1..=k {
        let mut prev_diff = f32::NEG_INFINITY;
        for j in 1..n {
            prev_diff = profit[i - 1][j - 1] - price[j - 1];
            profit[i][j] = profit[i][j - 1].max(price[j] + prev_diff);
        }
    }
    profit[k][n - 1] 
}
