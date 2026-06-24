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
fn f_gold(str: String) -> i32 {
    let mut len = str.len();
    let mut one_seen = 0;
    let mut count = 0;
    for i in 0..len {
        if str.chars().nth(i).unwrap() == '1' && one_seen == 1 {
            if str.chars().nth(i - 1).unwrap() == '0' {
                count += 1;
            }
        }
        if str.chars().nth(i).unwrap() == '1' && one_seen == 0 {
            one_seen = 1;
            continue;
        }
        if str.chars().nth(i).unwrap() != '0' && str.chars().nth(i).unwrap() != '1' {
            one_seen = 0;
        }
    }
    count
}
