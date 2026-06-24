fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::ffi::CString;

fn f_gold(s: &CString) -> i32 {
    let s = s.as_bytes(); 
    let mut i = 0;
    loop {
        if s[i] < 48 || s[i] > 57 {
            return 0;
        }
        i += 1;
        if i == s.len() {
            break;
        }
    }
    return 1; 
}
