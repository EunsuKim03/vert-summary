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
fn f_gold(arr: [i32;2], n: i32) -> i32 {
    let mut fw = vec![0; n as usize];
    let mut bw = vec![0; n as usize];
    let mut cur_max = arr[0]; 
    let mut max_so_far = arr[0];
    fw[0] = arr[0];
    for i in 1..n as usize {
        cur_max = max(arr[i], cur_max + arr[i]);
        max_so_far = max(max_so_far, cur_max);
        fw[i] = cur_max;
    }
    cur_max = max_so_far; 
    bw[n as usize-1] = arr[n as usize-1];
    for i in (0..n as usize-1).rev() {
        cur_max = max(arr[i], cur_max + arr[i]);
        max_so_far = max(max_so_far, cur_max);
        bw[i] = cur_max;
    }  
    let mut fans = max_so_far;
    for i in 1..n as usize-1 {
        fans = max(fans, fw[i-1] + bw[i+1]);
    }   
    fans
}
