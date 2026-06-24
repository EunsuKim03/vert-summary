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
fn f_gold(f: i32, d: i32, s: i32) -> i32 {
    let mut mem = vec![vec![0; s as usize + 1]; d as usize + 1];
    mem[0][0] = 1;
    for i in 1..=d {
        for j in i..=s {
            mem[i as usize][j as usize] = mem[i as usize][(j - 1) as usize] + mem[(i - 1) as usize][(j - 1) as usize];
            if j - f - 1 >= 0 {
                mem[i as usize][j as usize] -= mem[(i - 1) as usize][(j - f - 1) as usize];
            }
        }
    }
    mem[d as usize][s as usize] 
}
