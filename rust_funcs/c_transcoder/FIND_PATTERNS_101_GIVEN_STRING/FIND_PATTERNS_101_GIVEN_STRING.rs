fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::char;

fn f_gold(str: &[char]) -> i32 {
    let mut last = str[0];
    let mut i = 1;
    let mut counter = 0;
    while i < str.len() {
        if str[i] == '0' && last == '1' {
            while str[i] == '0' {
                i += 1;
            }
            if str[i] == '1' {
                counter += 1;
            }
        }
        last = str[i];
        i += 1;
    }
    counter
}
