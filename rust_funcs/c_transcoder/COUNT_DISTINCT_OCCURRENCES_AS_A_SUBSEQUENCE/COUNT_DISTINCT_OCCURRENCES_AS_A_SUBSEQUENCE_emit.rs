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
fn f_gold(S: &str, T: &str) -> i32 {
    let m = T.len();
    let n = S.len();
    if m > n {
        return 0;
    }
    let mut mat = vec![vec![0; n + 1]; m + 1];
    for i in 1..=m {
        mat[i][0] = 0; 
    }
    for j in 0..=n {
        mat[0][j] = 1;
    }
    for i in 1..=m {
        for j in 1..=n {
            if T.chars().nth(i - 1) != S.chars().nth(j - 1) {
                mat[i][j] = mat[i][j - 1];
            } else {
                mat[i][j] = mat[i][j - 1] + mat[i - 1][j - 1];
            }
        }
    }
    mat[m][n]
}
