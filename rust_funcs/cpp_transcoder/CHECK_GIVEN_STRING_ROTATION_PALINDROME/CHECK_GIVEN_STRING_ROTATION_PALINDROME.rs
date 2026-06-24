fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;
use std::vec; 

fn f_gold(mut str: String) -> i32 {
    let mut l = 0;
    let mut h = str.len() - 1;
    while h > l {
        if str[l..l+1] != str[h..h+1] {
            return 0;
        }
        l += 1;
        h -= 1;
    }
    1
}
