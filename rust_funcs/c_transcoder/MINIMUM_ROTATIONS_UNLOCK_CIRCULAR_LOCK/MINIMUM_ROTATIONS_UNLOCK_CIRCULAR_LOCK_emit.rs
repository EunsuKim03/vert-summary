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
fn f_gold (mut input: i32, mut unlock_code: i32) -> i32 {
    let mut rotation = 0;
    let mut input_digit; 
    let mut code_digit;

    while input != 0 || unlock_code != 0  {
        input_digit = input % 10;
        code_digit = unlock_code % 10;
        rotation += i32::min(i32::abs(input_digit - code_digit), 10 - i32::abs(input_digit - code_digit));
        input /= 10;
        unlock_code /= 10;
    }
    rotation
}
