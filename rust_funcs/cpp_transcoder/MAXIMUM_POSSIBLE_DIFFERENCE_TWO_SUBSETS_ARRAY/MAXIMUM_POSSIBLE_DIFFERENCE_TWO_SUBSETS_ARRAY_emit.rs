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
fn f_gold(arr: &mut [i32], n: i32) -> i32 { 
    let mut sum1 = 0; 
    let mut sum2 = 0;
    for i in 0..n {
        let mut is_single = 1;
        for j in i + 1..n {
            if arr[i as usize] == arr[j as usize] {
                is_single = 0;
                arr[i as usize] = 0;
                arr[j as usize] = 0;
                break; 
            }
        }
        if is_single {
            if arr[i as usize] > 0 {
                sum1 += arr[i as usize]; 
            } else {
                sum2 += arr[i as usize];
            }
        }
    }
    (sum1 - sum2).abs()
}
