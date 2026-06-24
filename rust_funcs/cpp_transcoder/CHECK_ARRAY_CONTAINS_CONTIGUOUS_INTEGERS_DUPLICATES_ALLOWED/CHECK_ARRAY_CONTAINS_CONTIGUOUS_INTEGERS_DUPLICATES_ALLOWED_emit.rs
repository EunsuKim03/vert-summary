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
fn f_gold(arr: [f32;2], n: u32) -> i32 {  
    let mut max = arr.iter().fold(f32::NEG_INFINITY, |a, &b| f32::max(a, b));
    let mut min = arr.iter().fold(f32::INFINITY, |a, &b| f32::min(a, b));  
     let m = (max - min + 1f32) as usize;  
    if m > n {  
        return 0;  
    }  
    let mut visited = vec![0; m];  
    for i in 0..n {  
        visited[(arr[i] - min) as usize] = 1;  
    }  
    for i in 0..m {  
        if visited[i] == 0 {  
            return 0;  
        }  
    }  
   1 
}
