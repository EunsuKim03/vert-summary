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
fn f_gold(k: i32, s1: &str, s2: &str) -> i32 {
    let n = s1.len() as i32;
    let m = s2.len() as i32;
    let mut lcs = vec![vec![0; m + 1]; n + 1];
    let mut cnt = vec![vec![0; m + 1]; n + 1];
        
    for i in 1..=n {
        for j in 1..=m {
            lcs[i as usize][j as usize] = max(lcs[(i - 1) as usize][j as usize], lcs[i as usize][(j - 1) as usize]);
            if s1[(i - 1) as usize] == s2[(j - 1) as usize] {
                cnt[i as usize][j as usize] = cnt[(i - 1) as usize][(j - 1) as usize] + 1;
            } 
            if cnt[i as usize][j as usize] >= k {
                for a in k..=cnt[i as usize][j as usize]  {
                    lcs[i as usize][j as usize] = max(lcs[i as usize][j as usize], lcs[(i - a) as usize][(j - a) as usize] + a);
                }
            }
        }
    }
    lcs[n as usize][m as usize]
}
