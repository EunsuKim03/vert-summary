fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold( n: i32 ) -> i32 {
    if n < 4 { return -1; }
    let mut rem = n % 4;
    if rem == 0 { return n / 4; }
    if rem == 1 {
        if n < 9  { return -1; }
        return (n - 9) / 4 + 1;
    }
    if rem == 2 { return (n - 6) / 4 + 1; }
    if rem == 3 {
        if n < 15 { return -1; }
        return (n - 15) / 4 + 2;
    } 
-1
}
