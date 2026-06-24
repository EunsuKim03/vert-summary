fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::vec;
use std::string;

fn f_gold(str: String) -> i32 {
    let mut zeros = 0;
    let mut ones = 0;
    for c in str.chars() {
        if c == '0' { zeros += 1; } 
        else { ones += 1; }
    }
    if zeros == 1 || ones == 1  {
         return 1;
    } 
    0
}
