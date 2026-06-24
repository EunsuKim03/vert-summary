fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;

fn f_gold(str: String) -> i32  {
    let mut len = str.len() as i32;
    let mut num = 0;
    let mut rem = 0;
    for i in 0..min(len, 11) {
        num = rem * 10 + (str.chars().nth(i as usize).unwrap() as i32 - '0' as i32);
        rem = num % 11;
    }
    rem
}
