fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::vec;
use std::fs;
use std::f32;

fn f_gold(arr: [f32;2], n: f32, sum: f32) -> i32 {
   let mut curr_sum = arr[0] as f32;
   let mut start = 0;
   for i in 1..n as usize  { 
       while curr_sum > sum && start < i - 1  {
            curr_sum -= arr[start];
            start += 1;
       }
       if curr_sum == sum {
             println!("Sum found between indexes {} and {}", start, i - 1);
             return  1.0;       
       }
       if i < n as usize {
           curr_sum += arr[i]; 
       }
   }
   println!("No subarray found");
   return 0.0; 
}
