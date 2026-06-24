fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::cmp::Ordering;

fn f_gold(mut arr1: [i32;2], mut arr2: [i32;2], m: i32, n: i32) -> i32 {
   if m < n {
       return 0;
   } 
   arr1.sort();
   arr2.sort();
   let mut i = 0;
   let mut j = 0;
   while i < n as usize && j < m as usize  {
       match arr1[j].cmp(&arr2[i]) {
           Ordering::Less => j += 1,
           Ordering::Equal => {
               j += 1;
               i += 1;
           }
           Ordering::Greater => return 0
       }
   }
   if i < n as usize {
       0
   } else {
       1
   }
}
