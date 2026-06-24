fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::str;

fn f_gold(tree: &str, k: i32) -> i32 {
    let mut level = -1;
    let mut sum = 0;
    let n = tree.len();
    for i in 0..n {
        if tree.chars().nth(i).unwrap() == '(' {
            level += 1;
        } else if tree.chars().nth(i).unwrap() == ')'  {
            level -= 1;
        } else {
            if level == k as i32 {
                sum += tree.chars().nth(i).unwrap().to_digit(10).unwrap() as i32;
            }
        }
    }
    sum    
}
