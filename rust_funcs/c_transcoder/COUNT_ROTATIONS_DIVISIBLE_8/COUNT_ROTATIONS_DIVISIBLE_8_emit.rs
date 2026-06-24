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
fn f_gold(n: &str) -> i32 {
    let len = n.len();
    let mut count = 0;
    if len == 1 {
        let one_digit = n.chars().nth(0).unwrap() as u32 - '0' as u32;
        if one_digit % 8 == 0 {
            return 1;
        }
        return 0;
    }
    if len == 2 {
        let first = (n.chars().nth(0).unwrap() as u32 - '0' as u32) * 10 
            + (n.chars().nth(1).unwrap() as u32 - '0' as u32);
        let second = (n.chars().nth(1).unwrap() as u32 - '0' as u32) * 10
            + (n.chars().nth(0).unwrap() as u32 - '0' as u32);
        if first % 8 == 0 {
            count += 1;
        }
        if second % 8 == 0 {
            count += 1;
        }
        return count;
    }
    let mut three_digit;
    for i in 0..len-2 {
        three_digit = (n.chars().nth(i).unwrap() as u32 - '0' as u32) * 100
            + (n.chars().nth(i + 1).unwrap() as u32 - '0' as u32) * 10
            + (n.chars().nth(i + 2).unwrap() as u32 - '0' as u32);
        if three_digit % 8 == 0 {
            count += 1;
        }
    }
    three_digit = (n.chars().nth(len-1).unwrap() as u32 - '0' as u32) * 100
        + (n.chars().nth(0).unwrap() as u32 - '0' as u32) * 10
        + (n.chars().nth(1).unwrap() as u32 - '0' as u32);
    if three_digit % 8 == 0 {
        count += 1;
    }
    three_digit = (n.chars().nth(len-2).unwrap() as u32 - '0' as u32) * 100
        + (n.chars().nth(len-1).unwrap() as u32 - '0' as u32) * 10
        + (n.chars().nth(0).unwrap() as u32 - '0' as u32);
    if three_digit % 8 == 0 {
        count += 1;
    }
    count  
}
