fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32; 
fn f_gold(n: i32) -> i32 {
   let mut nth_element: f32 = 19.0 + (n-1) as f32 * 9.0;
   let outliers_count = (nth_element.log10() - 1.0) as i32;
   nth_element += 9.0 * outliers_count as f32;
   nth_element as i32
}
