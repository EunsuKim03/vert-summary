fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io;

fn f_gold(n:i32) -> i32 {
    if n == 1 {
        2
    } else {
        2 * f_gold(n - 1)
    } 
}

fn main() {
    let n = 5;
    println!("Fibonacci number is: {}", f_gold(n));
}
