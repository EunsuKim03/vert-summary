fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::fs::File;
use std::io::BufReader;
use std::io::BufRead;

fn f_gold(a: i32, b: i32, mod_arg: i32) -> i32 {
    let mut res = 0;
    let mut a = a % mod_arg;
    let mut b = b;
    while b > 0 {
        if b & 1 == 1 {
            res = (res + a) % mod_arg; 
        }
        a = (2 * a) % mod_arg;
        b >>= 1;
    }
    res  
}
