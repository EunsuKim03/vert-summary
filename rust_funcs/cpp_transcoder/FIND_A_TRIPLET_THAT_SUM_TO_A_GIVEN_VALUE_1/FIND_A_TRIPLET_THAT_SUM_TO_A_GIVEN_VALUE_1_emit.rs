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
fn f_gold(a: &mut [i32], sum: i32) -> i32 {
    let mut a = a.to_vec();
    a.sort();
    let (mut l, mut r) = (0, a.len() - 1);
    for i in 0..a.len() - 2 {
        while l < r {
            if a[i] + a[l] + a[r] == sum {
                return 1; 
            } else if a[i] + a[l] + a[r] < sum {
                l += 1;
            } else {
                r -= 1;
            }
        }
    }
    0
}
