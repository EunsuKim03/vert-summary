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
fn f_gold(r: i32) -> i32 {
    if r <= 0 {
        return 0;
    }
    let mut result = 4;
    for x in 1..r {
        let y_square = (r as f32) * (r as f32) - (x as f32) * (x as f32);
        let y = (y_square as f32).sqrt();
        if (y as i32) * (y as i32) == y_square as i32 {
            result += 4;
        }
    }
    result
}
