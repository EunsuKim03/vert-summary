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
fn f_gold(k: i32, s1: String, s2: String) -> i32 {
    let n = s1.len();
    let m = s2.len();
    let mut lcs = vec![vec![0; m + 1]; n + 1];
    let mut cnt = vec![vec![0; m + 1]; n + 1];
    
    for i in 1..=n {
        for j in 1..=m {
            lcs[i][j] = lcs[i - 1][j].max(lcs[i][j - 1]);
            if s1[i - 1] == s2[j - 1] {
                cnt[i][j] = cnt[i - 1][j - 1] + 1;
            }
            if cnt[i][j] >= k {
                for a in k..=cnt[i][j] {
                    lcs[i][j] = lcs[i][j].max(lcs[i - a][j - a] + a);
                }
            }
        }
    }
    lcs[n][m] 
}
