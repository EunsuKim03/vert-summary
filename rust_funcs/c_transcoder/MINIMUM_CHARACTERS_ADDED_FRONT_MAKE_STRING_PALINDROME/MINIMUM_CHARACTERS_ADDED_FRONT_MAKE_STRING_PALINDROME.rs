fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;

fn f_gold(s: &str) -> i32 {
    let l = s.len();
    let mut i = 0;
    let mut j = l - 1;
    while i <= j  {
        if s.chars().nth(i).unwrap() != s.chars().nth(j).unwrap() {
            return 0;
        }
        i += 1;
        j -= 1;
    }
    1 
}
