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
fn f_gold(val: [i32;2], wt: [i32;2], n: i32, W: i32) -> i32 {
    let mut mat = vec![vec![0; W as usize + 1]; 2];
    let mut i = 0;
    while i < n {
        let mut j = 0;
        if i % 2 != 0 {
            while j <= W  {
                if wt[i as usize] <= j {
                    mat[1][j as usize] = max(val[i as usize] + mat[0][(j - wt[i as usize]) as usize], mat[0][j as usize]);
                } else {
                    mat[1][j as usize] = mat[0][j as usize];
                }
                j += 1;
            }
        } else {
            while j <= W  {
                if wt[i as usize] <= j {
                    mat[0][j as usize] = max(val[i as usize] + mat[1][(j - wt[i as usize]) as usize], mat[1][j as usize]);
                } else {
                    mat[0][j as usize] = mat[1][j as usize];
                }
                j += 1;
            }
        }
        i += 1;
    }
    if n % 2 != 0 {
        mat[0][W as usize]
    } else {
        mat[1][W as usize]
    } 
}
