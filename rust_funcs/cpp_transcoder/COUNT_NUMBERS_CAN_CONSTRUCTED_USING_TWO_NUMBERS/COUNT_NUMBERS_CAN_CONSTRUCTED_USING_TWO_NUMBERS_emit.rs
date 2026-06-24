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
fn f_gold(n: i32, x: i32, y: i32) -> i32 {
    let mut arr = Vec::with_capacity(n as usize + 1);
    arr.resize(n as usize + 1, 0);
    if x <= n {
        arr[x as usize] = 1;
    }
    if y <= n {
        arr[y as usize] = 1;
    }
    let mut result = 0;
    for i in std::cmp::min(x, y)..=n {
        if arr[i as usize] {
            if i + x <= n {
                arr[(i + x) as usize] = 1;
            }
            if i + y <= n {
                arr[(i + y) as usize] = 1;
            }
            result += 1;
        }
    }
    result
}
