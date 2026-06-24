fn min(x: i32, y: i32) -> i32 {if x < y { x } else { y } }
fn max(x: i32, y: i32) -> i32 {if x > y { x } else { y }}
fn cmpfunc(a: &i32, b: &i32) -> std::cmp::Ordering {a.cmp(b)}
fn len(arr: &[i32]) -> usize {arr.len()}
fn sort(arr: &mut [i32]) {arr.sort_by(cmpfunc);}

use std::io::prelude::*;

fn f_gold(mut n: i32) -> i32 {
   let mut odd_count = 0;
   let mut even_count = 0;
   if n < 0 { n = -n; }
   if n == 0 { return 1; } 
   if n == 1 { return 0; }
   while n > 0 {
     if n & 1 == 1 { odd_count += 1; }
     if n & 2 == 2 { even_count += 1; }  
     n >>= 2;
   }
   return f_gold(odd_count as i32 - even_count as i32); 
}
