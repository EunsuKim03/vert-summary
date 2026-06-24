fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io::prelude::*; 
use std::io::BufReader;

fn f_gold(degree: [i32;2], n: i32) -> i32 {
   let mut deg_sum = 0;
   for i in 0..n {
       deg_sum += degree[i as usize]; 
   }
   2 * (n - 1) == deg_sum
}
