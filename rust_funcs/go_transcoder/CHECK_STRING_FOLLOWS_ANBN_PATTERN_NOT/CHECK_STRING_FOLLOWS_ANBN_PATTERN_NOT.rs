fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;

fn f_gold(str: &str) -> i32 {
    let n = str.len();
    let mut i = 0;
    while str.chars().nth(i) == Some('a') {i += 1;}
    if i * 2 != n {return 0;}
    let mut j = i;
    while str.chars().nth(j) == Some('b') {j += 1;}
    return 1; 
}
