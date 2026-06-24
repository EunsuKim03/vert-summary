fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::f32;

fn f_gold(n: i32) -> i32 {
   if n == 0 || n == 1 {
     return n
   } 
   let mut f1 = 0;
   let mut f2 = 1;
   let mut f3 = 1;
   while f3 <= n{
     f1 = f2;
     f2 = f3;
     f3 = f1 + f2; 
   }
   f2
}
