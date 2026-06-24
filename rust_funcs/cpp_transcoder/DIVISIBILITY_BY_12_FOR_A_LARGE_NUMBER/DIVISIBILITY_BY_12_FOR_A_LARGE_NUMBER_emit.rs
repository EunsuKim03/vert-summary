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
fn f_gold(num: String) -> i32 {
    if num.len() >= 3 {
        let d1:i32 = num.chars().last().unwrap() as i32;
        if d1 % 2 != 0 { return 0; }
        let d2:i32 = num.chars().nth(num.len() - 2).unwrap() as i32;
        let mut sum:i32 = 0;
        for c in num.chars() {
            sum += c as i32;
        }
        if sum % 3 == 0 && (d2 * 10 + d1) % 4 == 0 {
            return 1;
        } else {
            return 0;
        }
    } else {
        let number:i32 = num.parse().unwrap();
        if number % 12 == 0 {
            return 1;
        } else {
            return 0;
        }
    }
}
