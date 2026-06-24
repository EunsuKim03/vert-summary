fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(arr: [i32;2], n: i32) -> i32 {
   let mut min = arr[0] as f32;   
   let mut min_index = 0;
   for i in 0..n as usize{
      if min > arr[i] as f32 {
         min = arr[i] as f32;
         min_index = i as i32;
      }
   }
   min_index  
}
