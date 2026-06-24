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
fn f_gold(n: i32) -> i32 { 
    let mut table = vec![0; n as usize + 1]; 
    table[0] = 1;
    for i in 3..=n {
        table[i as usize] += table[(i - 3) as usize]; 
    }
    for i in 5..=n {
        table[i as usize] += table[(i - 5) as usize];
    } 
    for i in 10..=n {
        table[i as usize] += table[(i - 10) as usize];
    }
    table[n as usize]
}
