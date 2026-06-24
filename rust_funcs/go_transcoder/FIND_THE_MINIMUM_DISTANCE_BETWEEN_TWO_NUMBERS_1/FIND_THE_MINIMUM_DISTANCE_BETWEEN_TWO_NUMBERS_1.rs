fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(arr: [i32;2], n: i32, x: i32, y: i32) -> i32 {
   let mut i = 0;
   let mut min_dist = f32::INFINITY as i32;
   let mut prev = 0;
   for i in 0..n {
       if arr[i as usize] == x || arr[i as usize] == y {
           prev = i;
           break;
       }
   }
   for i in prev..n {
      if arr[i as usize] == x || arr[i as usize] == y {
          if arr[prev as usize] != arr[i as usize] && (i - prev) < min_dist  {
               min_dist = i - prev;
               prev = i;
           } else {
               prev = i;
           }
      }
   }
   min_dist
}
