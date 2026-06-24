fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::vec;

fn f_gold(s: String, c: char) -> i32 {
    let mut one_seen = 0;
    let mut i = 0;
    let n = s.len(); 
    while i < n  {
        if s.chars().nth(i).unwrap() == c {
            if one_seen == 1 { return 0; }
            while i < n && s.chars().nth(i).unwrap() == c {
                 i += 1; 
            }
            one_seen = 1;
        } else {
            i += 1;
        }
    }
    1 
}
