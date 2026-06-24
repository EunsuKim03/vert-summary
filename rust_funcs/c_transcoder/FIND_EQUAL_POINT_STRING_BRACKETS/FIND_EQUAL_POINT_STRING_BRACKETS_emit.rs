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
fn f_gold(str: &Vec<char>) -> i32 {
    let mut open = vec![0;str.len()+1];
    let mut close = vec![0;str.len()+1];
    let mut index = -1;
    open[0] = 0;
    close[str.len()] = 0;
    if str[0] == '(' {open[1] = 1;}
    if str[str.len()-1] == ')' {close[str.len()-1] = 1;}
    for i in 1..str.len() {
        if str[i] == '(' {open[i+1] = open[i] + 1;}
        else {open[i+1] = open[i];}
    }
    for i in (0..str.len()-1).rev() {
        if str[i] == ')' {close[i] = close[i+1] + 1;}
        else {close[i] = close[i+1];} 
    }
    if open[str.len()] == 0 {return str.len() as i32;}
    if close[0] == 0 {return 0;}
    for i in 0..=str.len() {
        if open[i] == close[i] {index = i as i32; break;}
    }
    index
}
