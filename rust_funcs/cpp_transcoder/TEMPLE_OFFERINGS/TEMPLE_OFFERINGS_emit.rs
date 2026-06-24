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
fn f_gold(n: i32, mut templeHeight: &mut [i32]) -> i32 {
    let mut sum = 0;
    for i in 0..n {
        let mut left = 0;
        let mut right = 0;
        for j in (0..i).rev() {
            if temple_height[j] < temple_height[j+1] {
                left += 1;
            } else {
                break;
            }
        }
        for j in i+1..n {
            if temple_height[j] < temple_height[j-1] {
                right += 1;
            } else {
                break;
            }
        }
        sum += left.max(right) + 1;
    }
    sum
}
