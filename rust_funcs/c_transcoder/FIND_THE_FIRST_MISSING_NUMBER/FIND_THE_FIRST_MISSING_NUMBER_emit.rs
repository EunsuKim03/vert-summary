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
fn f_gold(array: [i32;2], start: i32, end: i32) -> i32 {  
    if start > end  {
        return end + 1;
    }
    if start != array[start as usize] {
        return start;
    }
    let mut mid = (start + end) as f32 / 2.0; 
    if array[mid as usize] == mid as i32{
        f_gold(array, mid as i32 + 1, end)
    } else {
        f_gold(array, start, mid as i32)
    }
}
