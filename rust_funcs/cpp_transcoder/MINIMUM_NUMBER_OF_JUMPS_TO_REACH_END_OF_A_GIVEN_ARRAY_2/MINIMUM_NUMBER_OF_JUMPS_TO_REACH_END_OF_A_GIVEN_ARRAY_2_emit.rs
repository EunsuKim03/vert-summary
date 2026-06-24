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
    let mut min;
    jumps[n as usize - 1] = 0;
    for i in (0..n-1).rev() {
        if arr[i as usize] == 0 {
            jumps[i as usize] = i32::MAX;
        } else if arr[i as usize] >= n - i - 1 {
            jumps[i as usize] = 1;
        } else {
            min = i32::MAX;
            for j in i + 1..n.min(i + arr[i as usize] + i) {
                if min > jumps[j as usize] {
                    min = jumps[j as usize];
                }
            }
            if min != i32::MAX {
                jumps[i as usize] = min + 1;
            } else {
                jumps[i as usize] = min;
            }
        }
    }
    jumps[0]
}
