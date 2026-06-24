fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::io;
use std::string;

fn f_gold(str: String) -> i32 {
    let tmp = str.to_string() + &str; 
    let n = str.len();
    
    for i in 1..=n {
        let substring = &tmp[i..i + str.len()];
        if str == substring {
            return i as i32;
        }
    }
    n as i32
}
