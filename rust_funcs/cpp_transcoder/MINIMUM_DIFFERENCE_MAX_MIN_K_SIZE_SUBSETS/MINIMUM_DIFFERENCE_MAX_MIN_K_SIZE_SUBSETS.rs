fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::cmp;

fn f_gold(mut arr: [i32;2], N: i32, K: i32) -> i32 {  
   arr.sort();
   let mut res = i32::MAX;
   for i in 0..(N-K) {
       let curSeqDiff = arr[(i + K - 1) as usize] - arr[i as usize];  
       res = cmp::min(res, curSeqDiff);  
   }  
   res
}
