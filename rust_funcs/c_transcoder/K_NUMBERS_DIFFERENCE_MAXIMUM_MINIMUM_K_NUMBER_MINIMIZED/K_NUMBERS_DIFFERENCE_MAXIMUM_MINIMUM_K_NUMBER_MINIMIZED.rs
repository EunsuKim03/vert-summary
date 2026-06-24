fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp::Ordering;

fn f_gold(arr: &mut [i32], n: i32, k: i32) -> i32 {
   let mut result = i32::MAX;
   arr.sort();
   for i in 0..=(n-k) {
     result = result.min(arr[i as usize + k as usize - 1] - arr[i as usize]);  
   }
   result
}
