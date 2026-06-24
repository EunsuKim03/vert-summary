fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(mut str: String) -> char {
    if str.is_empty() {
        return '\0' as char;
    }
    if str.chars().next().unwrap().is_uppercase() {
        return str.chars().next().unwrap(); 
    }
    f_gold(str.chars().skip(1).collect())
}
