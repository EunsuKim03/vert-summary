fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::num;
use std::vec; 
use std::fs;
use std::i32;

fn f_gold(num: i32, divisor: i32) -> i32 {
    let mut num = num;
    while num >= divisor {
         num -= divisor;
    }
    num
}
