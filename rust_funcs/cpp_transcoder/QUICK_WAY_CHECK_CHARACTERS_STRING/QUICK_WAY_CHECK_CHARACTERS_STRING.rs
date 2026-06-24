fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::ffi::CString;
use std::string;

fn f_gold(s: String) -> i32 {
    let n = s.len();
    let mut flag = 0;
    for i in 1..n {
        if s.chars().nth(i) != s.chars().nth(0) {
            flag = 1;
            break;
        }
    }
    if flag == 0 {
        1 
    } else {
        0
    }
}
