fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;

fn f_gold(arr: [i32;2], n: i32, k: i32) -> i32 {
   let max = *arr.iter().max().unwrap();
   let mut res = 0;
   for i in 0..n {
       if (max - arr[i as usize]) % k != 0 {
           return -1; 
       } else {
           res += (max - arr[i as usize]) / k;
       }
   }
   res
}
