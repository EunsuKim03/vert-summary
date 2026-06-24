fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::i32;

fn f_gold(n: u32) -> u32 {
   let mut p = 1;
   if n > 0 && (n & (n - 1)) == 0 { return n; }
   while p < n { p *= 2; }
   p 
}
