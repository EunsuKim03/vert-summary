fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;

fn f_gold(str: &str) -> i32 {
    let mut i = 0;
    let mut j = str.len() - 1;
    while i < j {
        if str.chars().nth(i) != str.chars().nth(j) {
            return 0;
        }        
        i += 1;
        j -= 1;
    }
    return 1; 
}
