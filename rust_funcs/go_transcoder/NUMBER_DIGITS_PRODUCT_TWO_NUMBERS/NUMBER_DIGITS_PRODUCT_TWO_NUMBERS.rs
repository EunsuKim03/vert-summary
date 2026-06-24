fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

enum Error {
}
use std::fmt;

impl fmt::Display for Error {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "Division by zero")
    }
}


fn f_gold(a: i32, b: i32) -> i32 {
    let mut count = 0;
    let mut p = a.abs() * b.abs();
    if p == 0 {
        return 1;
    }
    while p > 0 {
        count += 1;
        p /= 10;
    }
    count
}
