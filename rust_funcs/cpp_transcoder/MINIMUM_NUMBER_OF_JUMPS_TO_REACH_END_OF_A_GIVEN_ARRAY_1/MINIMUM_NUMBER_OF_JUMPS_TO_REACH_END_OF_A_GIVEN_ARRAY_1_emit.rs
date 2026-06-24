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
    let mut jumps = vec![0; n as usize];
    let n = n as usize;
    if n == 0 || arr[0] == 0 {
        return i32::MAX;
    }
    jumps[0] = 0;
    for i in 1..n {
        jumps[i] = i32::MAX;
        for j in 0..i {
            if i <= j + arr[j] as usize && jumps[j] != i32::MAX {
                jumps[i] = min(jumps[i], jumps[j] + 1);
                break;
            }
        }
    }
    jumps[n - 1]
}
