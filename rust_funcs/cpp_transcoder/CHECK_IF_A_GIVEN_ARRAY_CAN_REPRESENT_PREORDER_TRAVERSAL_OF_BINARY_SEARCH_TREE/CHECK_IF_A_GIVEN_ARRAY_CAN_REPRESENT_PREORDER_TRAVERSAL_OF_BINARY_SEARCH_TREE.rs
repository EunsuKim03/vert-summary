fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::iter;
use std::vec::Vec;

fn f_gold(pre: [f32;2], n: u32) -> i32 {
    let mut s = Vec::<f32>::new();
    let mut root = f32::NEG_INFINITY;
    for i in 0..n {
        if pre[i] < root{
            return 0;
        }
        while !s.is_empty() && s[s.len() - 1] < pre[i] {
            root = s.pop().unwrap();
        }
        s.push(pre[i]);
    }
    return 1; 
}
