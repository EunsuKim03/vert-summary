fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}


use std::f32;

fn f_gold(ar1: [i32], ar2: [i32], n: i32) -> i32 {
   let mut i = 0;
   let mut j = 0;
   let mut count;
   let mut m1 = -1;
   let mut m2 = -1;
   for count in 0..=n {
       if i == n as usize {
           m1 = m2;
           m2 = ar2[0];
           break;
       } else if j == n as usize {
           m1 = m2;
           m2 = ar1[0];
           break;
       }
       if ar1[i] < ar2[j] {
           m1 = m2;
           m2 = ar1[i];
           i += 1;
       } else {
           m1 = m2;
           m2 = ar2[j];
           j += 1;
       }
   }
   return (m1 + m2) / 2; 
}
