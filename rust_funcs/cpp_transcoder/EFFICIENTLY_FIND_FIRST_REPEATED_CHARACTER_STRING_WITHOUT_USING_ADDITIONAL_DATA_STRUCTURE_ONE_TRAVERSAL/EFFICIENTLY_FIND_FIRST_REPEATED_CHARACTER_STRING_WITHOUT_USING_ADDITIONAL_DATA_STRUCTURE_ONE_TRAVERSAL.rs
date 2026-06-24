fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::os::raw::c_char;

fn f_gold(str: String) -> i32 {
    let mut checker: i32 = 0;
    for i in 0..str.len() {
        let val: i32 = str.chars().nth(i).unwrap() as i32 - 'a' as i32;
        if checker & (1 << val) > 0 {
            return i as i32
        }
        checker |= 1 << val;
    }
    -1
}
