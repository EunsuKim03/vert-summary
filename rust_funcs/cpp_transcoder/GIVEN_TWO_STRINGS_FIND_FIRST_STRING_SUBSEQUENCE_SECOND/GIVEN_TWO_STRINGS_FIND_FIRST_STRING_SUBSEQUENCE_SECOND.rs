fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold( str1: &[char], str2: &[char], m: i32, n: i32 ) -> i32 {
    if m == 0 {1}
    else if n == 0 {0}
    else if str1[m as usize - 1] == str2[n as usize - 1] {
        f_gold(str1, str2, m - 1, n - 1)
    } else {
        f_gold(str1, str2, m, n - 1)
    }
}
