fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io::prelude::*;

fn f_gold(tree: String, k: i32) -> i32 {
    let mut level = -1;
    let mut sum = 0;
    let n = tree.len();
    for i in 0..n {
        if tree.chars().nth(i).unwrap() == '(' {
            level += 1;  
        } else if tree.chars().nth(i).unwrap() == ')' {
            level -= 1;
        } else {
            if level == k {
                sum += tree.chars().nth(i).unwrap() as i32 - '0' as i32;    
            }
        }
    }
    sum
}
