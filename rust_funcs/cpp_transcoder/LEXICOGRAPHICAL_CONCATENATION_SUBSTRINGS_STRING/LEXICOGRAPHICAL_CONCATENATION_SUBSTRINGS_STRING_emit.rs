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
fn f_gold(s: String) -> String {
    let n = s.len();
    let mut sub_count = (n * (n + 1)) / 2;
    let mut arr = Vec::with_capacity(sub_count as usize);
    let mut index = 0;
    for i in 0..n {
        for len in 1..=n - i {
            arr.push(s[i..i + len].to_string());
            index += 1;
        }
    }
    arr.sort();
    let mut res = String::new();
    for i in 0..sub_count {
        res.push_str(&arr[i]);
    }
    res
}
