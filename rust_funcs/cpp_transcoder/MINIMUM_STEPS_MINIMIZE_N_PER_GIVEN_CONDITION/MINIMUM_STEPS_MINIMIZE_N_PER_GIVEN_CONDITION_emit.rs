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
    let mut table = vec![n as i32; n as usize + 1];
    for i in 1..=n {
        table[i as usize] = n - i;
    }
    for i in (1..=n).rev() {
        if i % 2 == 0 {
            table[i as usize / 2] = min(table[i as usize] + 1, table[i as usize / 2]);
        }
        if i % 3 == 0 {
            table[i as usize / 3] = min(table[i as usize] + 1, table[i as usize / 3]); 
        }
    }
    table[1]
}
