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
fn f_gold(n: String) -> i32 {
    let mut len = n.len();
    if len == 1 {
        let one_digit = n.chars().nth(0).unwrap() as i32 - '0' as i32;
        if one_digit % 4 == 0 {
            return 1;
        }
        return 0; 
    }
    let mut two_digit; 
    let mut count = 0;
    for i in 0..(len - 1)  {
        two_digit = (n.chars().nth(i).unwrap() as i32 - '0' as i32) * 10 + (n.chars().nth(i + 1).unwrap() as i32 - '0' as i32);
        if two_digit % 4 == 0 {
            count += 1;
        }
    }
    two_digit = (n.chars().nth(len - 1).unwrap() as i32 - '0' as i32) * 10 + (n.chars().nth(0).unwrap() as i32 - '0' as i32);
    if two_digit % 4 == 0 {
        count += 1;
    }
    count
}
