fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::string;  
use std::vec;
use std::fs;
use std::f32;

fn f_gold(mut n: u32) -> i32 {
    let mut count = 0;
    if n > 0 && (n & (n - 1)) == 0 {
        while n > 1 {
            n >>= 1;
            count += 1;
        }
        if count % 2 == 0 {
            1 
        } else {
            0
        }
    } else {
        0
    } 
}
