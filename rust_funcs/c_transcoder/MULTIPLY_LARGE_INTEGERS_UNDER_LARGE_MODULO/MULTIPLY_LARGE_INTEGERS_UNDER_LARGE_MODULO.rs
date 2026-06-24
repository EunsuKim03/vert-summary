fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::collections::HashSet;

fn f_gold(a: i32, b: i32, mod_: i32) -> i32 {
    let mut res = 0;
    let mut a = a % mod_;
    let mut b = b;
    while b > 0 {
        if b & 1 == 1 {
            res = (res + a) % mod_;
        }
        a = (2 * a) % mod_;
        b >>= 1;
    }
    res
}
