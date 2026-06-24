fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::fs;

fn f_gold(s: &[char], n: i32) -> i32 {  
    let mut invalid_open_braces = 0;
    let mut invalid_close_braces = 0;
    for i in 0..n {
        if s[i as usize] == '(' {
            invalid_open_braces += 1;
        } else {
            if invalid_open_braces == 0 {
                invalid_close_braces += 1;
            } else {
                invalid_open_braces -= 1;
            }
        }
    }
    n - (invalid_open_braces + invalid_close_braces)
}
