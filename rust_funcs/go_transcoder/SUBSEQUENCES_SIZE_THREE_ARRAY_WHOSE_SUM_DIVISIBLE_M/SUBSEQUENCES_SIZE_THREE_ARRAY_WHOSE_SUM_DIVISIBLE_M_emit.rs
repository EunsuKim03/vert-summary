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
fn f_gold(A: [i32;2], N: i32, M: i32) -> i32 {
    let mut sum: i32;
    let mut ans: i32 = 0;
    for i in 0..N {
        for j in (i + 1)..N {
            for k in (j + 1)..N {
                sum = A[i as usize] + A[j as usize] + A[k as usize];
                if sum % M == 0 {
                    ans += 1;
                }
            }
        }
    }
    ans
}
