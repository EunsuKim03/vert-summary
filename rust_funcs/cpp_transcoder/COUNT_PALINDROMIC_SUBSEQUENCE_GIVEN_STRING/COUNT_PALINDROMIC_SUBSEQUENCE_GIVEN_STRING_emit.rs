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
fn f_gold(str: String) -> i32 {
    let N = str.len();
    let mut cps = vec![vec![0; N + 1]; N + 1];
    for i in 0..N {
        cps[i][i] = 1;
    }
    for L in 2..=N {
        for i in 0..N {
            let k = L + i - 1;
            if str[i..i + 1] == str[k..k + 1] {
                cps[i][k] = cps[i][k - 1] + cps[i + 1][k] + 1;
            } else {
                cps[i][k] = cps[i][k - 1] + cps[i + 1][k] - cps[i + 1][k - 1];
            }
        }
    }
    cps[0][N - 1]
}
