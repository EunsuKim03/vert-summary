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
fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut lis = vec![1; n as usize];
    let mut lds = vec![1; n as usize];

    for i in 1..n {
        for j in 0..i {
            if arr[i as usize] > arr[j as usize] && lis[i as usize] < lis[j as usize] + 1 {
                lis[i as usize] = lis[j as usize] + 1; 
            }
        }
    }

    for i in (0..n-1).rev() {
        for j in (n-1)..i {
            if arr[i as usize] > arr[j as usize] && lds[i as usize] < lds[j as usize] + 1 {
                lds[i as usize] = lds[j as usize] + 1; 
            }
        }
    }

    let mut max = lis[0] + lds[0] - 1;
    for i in 1..n {
        if lis[i as usize] + lds[i as usize] - 1 > max {
            max = lis[i as usize] + lds[i as usize] - 1;
        }
    }
    max
}
