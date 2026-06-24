fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp::Ordering;
use std::f32;

fn f_gold(a: &mut [f32], b: &mut [f32], n: i32) -> i32 {
   a.sort_by(|x, y| x.partial_cmp(y).unwrap());
   b.sort_by(|x, y| y.partial_cmp(x).unwrap());
   let mut result = 0.0;
   for i in 0..n {
       result += a[i as usize] * b[(n - 1 - i) as usize];
   }
   result
}
